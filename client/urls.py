from django.urls import path
from . import views

urlpatterns = [
    path('', views.index),
    path('client/', views.index, name="index"),
    path('login/', views.user_login, name="login"),
    path('logout/', views.user_logout, name="logout"),
    path('client/dashboard/', views.index, name="dashboard"),
    path('client/vehicles/', views.vehicles, name="vehicles"),
    path('client/vehicles/new/', views.add_vehicle, name="new_vehicle"),
    path('client/vehicles/map/', views.locations, name="vehicle_locations"),
    path('client/vehicle/live/', views.live_stream, name="live_streams"),
    path('client/recordings/storage/', views.recordings, name="recordings"),
]
