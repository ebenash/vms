"""vms URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.views.generic import RedirectView

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('client.urls')),
    path('favicon.ico',RedirectView.as_view(url='/static/favicon.ico')),
    path('motorcycle.png',RedirectView.as_view(url='/static/client/img/markers/motorcycle.png'), name="motorcycle"),
    path('tractor.png',RedirectView.as_view(url='/static/client/img/markers/tractor.png'), name="tractor"),
    path('car.png',RedirectView.as_view(url='/static/client/img/markers/car.png'), name="car"),
    path('truck.png',RedirectView.as_view(url='/static/client/img/markers/truck.png'), name="truck"),
    path('pin.png',RedirectView.as_view(url='/static/client/img/markers/pin.png'), name="pin"),
]
