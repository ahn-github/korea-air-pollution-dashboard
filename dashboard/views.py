from django.shortcuts import render
from .models import AirKoreaStations, AirKoreaData
from datetime import datetime as dt
from djgeojson.views import GeoJSONLayerView
from datetime import timedelta
from django.db.models import Count

# def datetime_handler(x):
#     if isinstance(x, dt):
#         return x.isoformat()
#     raise TypeError("Unknown type")

def index(request):

    num_of_stations = AirKoreaStations.objects.count()
    recent_hour = dt.now() - timedelta(dt.now().minute)
    num_of_alive = AirKoreaData.objects.filter(datatime__range=(recent_hour, recent_hour + timedelta(hours=1))).count()
    num_of_failure = num_of_stations - num_of_alive

    context = {
        "num_of_stations" : num_of_stations,
        "num_of_failure" : num_of_failure,
        "num_of_alive" : num_of_alive
    }

    return render(request, "dashboard/index.html", context)

class MapLayer(GeoJSONLayerView):
    precision = 6
    simplify = 0.5
    geometry_field = 'geom'

def detail(request, station_name):
    recent_24h_data = AirKoreaData.objects.filter(stnname=station_name).order_by('-datatime')[:24].values()
    recent_24h_data = reversed(recent_24h_data)
    return render(request, "dashboard/detail.html", {"station_name" : station_name, 'recent_24h_data' : recent_24h_data})
