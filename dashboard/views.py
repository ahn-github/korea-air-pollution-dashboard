from django.shortcuts import render
from .models import AirKoreaStations, AirKoreaData
from datetime import datetime as dt
from djgeojson.views import GeoJSONLayerView
from datetime import timedelta
import json


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

    return render(request, "dashboard/detail.html", {'recent_data': recent_data})


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
