from django.shortcuts import render
from .models import AirKoreaStations, AirKoreaData
from datetime import datetime as dt
from djgeojson.views import GeoJSONLayerView
from datetime import timedelta
import json


def index(request):
    num_of_stations = AirKoreaStations.objects.count()
    recent_hour = dt.now().replace(microsecond=0,second=0,minute=0)
    num_of_alive = AirKoreaData.objects.filter(datatime__range=(recent_hour, recent_hour + timedelta(hours=1))).\
        values('stnname').distinct().count()
    num_of_failure = num_of_stations - num_of_alive
    num_of_polluted = AirKoreaData.objects.filter(datatime__range=(recent_hour, recent_hour + timedelta(hours=1))). \
        filter(khaigrade__gt=2).count()
    num_of_clean = AirKoreaData.objects.filter(datatime__range=(recent_hour, recent_hour + timedelta(hours=1))). \
        filter(khaigrade__lt=2).count()

    context = {
        "num_of_stations": num_of_stations,
        "num_of_failure": num_of_failure,
        "num_of_alive": num_of_alive,
        "num_of_polluted": num_of_polluted,
        "num_of_clean": num_of_clean
    }

    return render(request, "dashboard/index.html", context)


class MapLayer(GeoJSONLayerView):
    precision = 6
    simplify = 0.5
    geometry_field = 'geom'


def detail(request, station_name):
    recent_24h_data = AirKoreaData.objects.filter(stnname=station_name).order_by('-datatime')[:24].values()
    recent_24h_data = list(reversed(recent_24h_data))

    return render(request, "dashboard/detail.html", {"station_name": station_name, 'recent_24h_data': recent_24h_data})


def list_table(request, status):
    recent_hour = dt.now().replace(microsecond=0,second=0,minute=0)
    if status == 'polluted':
        stations_list = AirKoreaData.objects.filter(datatime__range=(recent_hour, recent_hour + timedelta(hours=1))). \
            filter(khaigrade__gt=2).values('stnname')
    elif status == 'clean':
        stations_list = AirKoreaData.objects.filter(datatime__range=(recent_hour, recent_hour + timedelta(hours=1))). \
            filter(khaigrade__lt=2).values('stnname')
    elif status == 'failure':
        stations_list = AirKoreaData.objects.filter(datatime__range=(recent_hour, recent_hour + timedelta(hours=1))).values('stnname')
        stations_list = AirKoreaStations.objects.exclude(stationname__in=stations_list).values('stationname')
    else :
        stations_list = AirKoreaStations.objects.values('stationname')

    stations = AirKoreaStations.objects.filter(stationname__in=stations_list)

    return render(request, "dashboard/list.html", {"status": status, "Stations": stations})
