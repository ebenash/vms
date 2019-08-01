from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect, Http404
from django.urls import reverse
from .models import Vehicle_Type, Vehicle, Profile, Recording
from django.contrib.auth.models import User

# Create your views here.
def index(request):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Welcome"})
    
    vehicles = Vehicle.objects.all()
    user = User.objects.get(pk=request.user.id)

    data = {
        "user" : request.user,
        "vehicles": vehicles,
        "numvehicles": vehicles.count(),
        "numusers": Profile.objects.filter(company_id=user.profile.company_id).count(),
        "numrecordings": Recording.objects.count(),
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

def update_profile(request, user_id):
    user = User.objects.get(pk=user_id)
    user.profile.address = request.POST["address"]
    user.profile.phone_number = request.POST["phone_number"]
    user.profile.company = request.POST["company"]
    user.save()

def vehicles(request):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})

    data = {
        "user" : request.user,
        "vehicles": Vehicle.objects.all()
    }
    return render(request,'client/vehicles.html',data)

def vehicle_details(request,vehicle_id):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})

    if vehicle_id is not None:
        selected = get_object_or_404(Vehicle,pk=vehicle_id)
        """try:
            selected = Vehicle.objects.get(pk=vehicle_id)
        except Vehicle.DoesNotExist :
            raise Http404("Vehicle does not exist")"""

    data = {
        "user" : request.user,
        "vehicles": Vehicle.objects.all(),
        "selected": selected
    }
    return render(request,'client/vehicles.html',data)

def add_vehicle(request):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})
    if request.method != 'POST':
        data = {
            "user" : request.user,
            "vehicle_types" : Vehicle_Type.objects.all()
        }
        return render(request,'client/add_vehicle.html',data)
    else:
        vehicle_type_id = Vehicle_Type.objects.get(id = request.POST["vehicle_type"])
        brand_name = request.POST["brand_name"]
        brand_model = request.POST["brand_model"]
        reg_number = request.POST["reg_number"]
        year = request.POST["year"]
        seats = request.POST["seats"]
        color = request.POST["color"]
        description  = request.POST["description"]

        query = Vehicle(vehicle_type_id = vehicle_type_id,brand_name = brand_name,brand_model = brand_model, reg_number = reg_number, year = year, seats = seats, color = color, description  = description)

        try:
            save = Vehicle.save(query)
        except:
            return render(request,'client/vehicles/new.html',{"alert":"error", "message":"Vehicle could not be recorded. Please Try Again."})

        return render(request,'client/vehicles.html',{"alert":"success", "message":"New Vehicle Recorded."})



def locations(request):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})

    data = {
        "user" : request.user,
        "vehicles": Vehicle.objects.all()
    }
    return render(request,'client/map.html',data)

def vehicle_location(request,vehicle_id):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})

    if vehicle_id is not None:
        selected = get_object_or_404(Vehicle,pk=vehicle_id)

    data = {
        "user" : request.user,
        "selected": selected
    }
    return render(request,'client/map.html',data)

def live_stream(request,vehicle_id):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})

    if vehicle_id is not None:
        selected = get_object_or_404(Vehicle,pk=vehicle_id)

    data = {
        "user" : request.user,
        "selected": selected
    }
    return render(request,'client/live_stream.html',data)

def recordings(request):
    if not request.user.is_authenticated:
        return render(request,'client/login.html',{"message":"Please Login to Continue"})

    data = {
        "user" : request.user,
        "recordings" : Recording.objects.all()
    }
    return render(request,'client/recordings.html',data)

