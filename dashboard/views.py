from django.shortcuts import render
from .models import AirKoreaStations, AirKoreaData
from datetime import datetime as dt
from djgeojson.views import GeoJSONLayerView
from datetime import timedelta
from django.db.models import Count, Max
from django.db.models.functions import Substr
from keras.models import load_model
import numpy as np
from keras import backend as K

def index(request):
    yesterday = dt.now().replace(microsecond=0,second=0,minute=0, hour=0)
    num_of_stations = AirKoreaData.objects.filter(datatime__range=(yesterday - timedelta(days=1), yesterday)).\
            values('stnfk').distinct()
    num_of_failure = AirKoreaStations.objects.exclude(id__in=num_of_stations).values('stationname').count()
    num_of_polluted = AirKoreaData.objects.filter(datatime__range=(yesterday - timedelta(days=1), yesterday)). \
        filter(khaigrade__gt=2).values('stnfk').distinct().count()
    num_of_clean = AirKoreaData.objects.filter(datatime__range=(yesterday - timedelta(days=1), yesterday)). \
        filter(khaigrade__lt=2). values('stnfk').distinct().count()

    context = {
        "num_of_stations": num_of_stations.count(),
        "num_of_failure": num_of_failure,
        "num_of_polluted": num_of_polluted,
        "num_of_clean": num_of_clean
    }

    return render(request, "dashboard/index.html", context)


class MapLayer(GeoJSONLayerView):
    precision = 6
    simplify = 0.5
    geometry_field = 'geom'


def detail(request, station_name):
    yesterday = dt.now().replace(microsecond=0, second=0, minute=0, hour=0)
    recent_data = AirKoreaData.objects.filter(stnfk__stationname=station_name).\
        filter(datatime__range=(yesterday - timedelta(days=1), yesterday)).order_by('datatime')

    model = load_model('my_model.h5')
    x = list(recent_data.values_list('pm25value', flat=True))
    x = np.array(x[-24:])

    x = x.reshape(-1, 24, 1)

    y_pred = model.predict(x / 200)
    y_pred = y_pred[0] * 200

    K.clear_session()

    forecast_dt = []
    for i in range(1, 7):
        forecast_dt.append(yesterday + timedelta(hours=i))

    return render(request, "dashboard/detail.html", {'recent_data': recent_data, 'forecast': y_pred,
                                                     'forecast_dt' : forecast_dt})


def list_table(request, status):
    yesterday = dt.now().replace(microsecond=0, second=0, minute=0, hour=0)
    if status == 'polluted':
        stations_list = AirKoreaData.objects.filter(datatime__range=(yesterday - timedelta(days=1), yesterday)). \
            filter(khaigrade__gt=2).values('stnfk').distinct()
    elif status == 'clean':
        stations_list = AirKoreaData.objects.filter(datatime__range=(yesterday - timedelta(days=1), yesterday)). \
            filter(khaigrade__lt=2).values('stnfk').distinct()
    elif status == 'failure':
        stations_list = AirKoreaData.objects.filter(datatime__range=(yesterday - timedelta(days=1), yesterday)).\
            values('stnfk').distinct()
        stations_list = AirKoreaStations.objects.exclude(id__in=stations_list).values('id')
    else :
        stations_list = AirKoreaStations.objects.values('id')

    stations = AirKoreaStations.objects.filter(id__in=stations_list)

    return render(request, "dashboard/list.html", {"status": status, "Stations": stations})

def stations_stat(request):
    mangname_count = AirKoreaStations.objects.values('mangname').annotate(total=Count('mangname')).order_by('-total')
    area_count = AirKoreaStations.objects.values('addr').annotate(area=Substr('addr', 1, 2)).values('area').annotate(total=Count('area')).order_by('-total')

    return render(request, "dashboard/stat.html", {"mangname_count": mangname_count, "area_count" :area_count})

