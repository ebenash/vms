from django.db import models

# Create your models here.
class Clients(models.Model):
    client_name = models.CharField(max_length=150)
    client_location = models.CharField(max_length=150)
    phone_number = models.CharField(max_length=100)

class Client_Users(models.Model):
    first_name = models.CharField(max_length=65)
    last_name = models.CharField(max_length=65)
    email = models.CharField(max_length=65)
    address = models.CharField(max_length=150)
    phone_number = models.CharField(max_length=100)
    client = models.ForeignKey(Clients, on_delete=models.CASCADE)
    username = models.CharField(max_length=65)
    password = models.CharField(max_length=200)
    access = models.CharField(max_length=65)

class Vehicles(models.Model):
    reg_number = models.CharField(max_length=65)
    brand_name = models.CharField(max_length=100)
    brand_model = models.CharField(max_length=100)
    year = models.CharField(max_length=10)
    vehicle_type = models.CharField(max_length=65)
    seats = models.IntegerField()
    color = models.CharField(max_length=65)
    
