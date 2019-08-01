from django.urls import path
from . import views

#app_name = 'client'

urlpatterns = [
    path('', views.index),
    path('client/', views.index, name="index"),
    path('login/', views.user_login, name="login"),
    path('logout/', views.user_logout, name="logout"),
    path('client/dashboard/', views.index, name="dashboard"),
    path('client/vehicles/', views.vehicles, name="vehicles"),
    path('client/vehicles/<int:vehicle_id>', views.vehicle_details, name="vehicle"),
    path('client/vehicles/new/', views.add_vehicle, name="add_vehicle"),
    path('client/vehicles/map/', views.locations, name="vehicle_locations"),
    path('client/vehicles/map/<int:vehicle_id>', views.vehicle_location, name="vehicle_location"),
    path('client/vehicle/live/<int:vehicle_id>', views.live_stream, name="live_stream"),
    path('client/recordings/storage/', views.recordings, name="recordings"),
]
