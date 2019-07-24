from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse

# Create your views here.
def index(request):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Welcome"})
    data = {
        "user" : request.user
    }
    return render(request,'client/dashboard.html',data)

def user_login(request):
    username = request.POST["username"]
    password = request.POST["password"]
    if username is None:
        return render('client/login.html',{"message":"Welcome"})

    user = authenticate(request,username=username,password=password)
    
    if user is not None:
        login(request,user)
        return HttpResponseRedirect(reverse('dashboard'))
    else:
        return render(request,'client/login.html',{"message":"Invalid Credentials"})

def user_logout(request):
    logout(request)
    return render(request,'client/login.html',{"message":"Successfully Logged out"})

def vehicles(request):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})
    data = {
        "user" : request.user
    }
    return render(request,'client/vehicles.html',data)

def add_vehicle(request):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})
    data = {
        "user" : request.user
    }
    return render(request,'client/add_vehicle.html',data)

def locations(request):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})
    data = {
        "user" : request.user
    }
    return render(request,'client/map.html',data)

def live_stream(request):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})
    data = {
        "user" : request.user
    }
    return render(request,'client/live_stream.html',data)

def recordings(request):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})
    data = {
        "user" : request.user
    }
    return render(request,'client/recordings.html',data)

