from django.urls import path, include
import dashboard.views as views
from django.conf.urls import url
from .models import AirKoreaStations

urlpatterns = [
    url('data.geojson/', views.MapLayer.as_view(model=AirKoreaStations, properties=('stationname', 'addr', 'item')), name='data'),
    path('status/<str:status>/', views.list_table, name='list_table'),
    path('detail/<str:station_name>/', views.detail, name='detail'),
    path('', views.index, name='index'),
]