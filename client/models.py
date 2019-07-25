from django.db import models

# Create your models here.
class Client(models.Model):
    client_name = models.CharField(max_length=150)
    client_location = models.CharField(max_length=150)
    phone_number = models.CharField(max_length=100)

    def __str__(self):
        return f"{self.client_name}"

class Client_User(models.Model):
    first_name = models.CharField(max_length=65)
    last_name = models.CharField(max_length=65)
    email = models.CharField(max_length=65)
    address = models.CharField(max_length=150)
    phone_number = models.CharField(max_length=100)
    client = models.ForeignKey(Client, on_delete=models.CASCADE)
    username = models.CharField(max_length=65)
    password = models.CharField(max_length=200)
    access = models.CharField(max_length=65)

    def __str__(self):
        return f"{self.first_name} {self.last_name}"

class Vehicle_Type(models.Model):
    type_name = models.CharField(max_length=150)
    description = models.TextField(blank=True, null=True)

    def __str__(self):
        return f"{self.type_name}"

class Vehicle(models.Model):
    reg_number = models.CharField(max_length=65)
    brand_name = models.CharField(max_length=100)
    brand_model = models.CharField(max_length=100)
    year = models.CharField(max_length=10)
    vehicle_type_id = models.ForeignKey(Vehicle_Type, on_delete=models.CASCADE, default=0)
    seats = models.IntegerField()
    color = models.CharField(max_length=65)
    description = models.TextField(blank=True, null=True)
    stream_feed =  models.CharField(max_length=500, null=True)

    def __str__(self):
        return f"{self.reg_number} - {self.brand_name} - {self.brand_model} - {self.vehicle_type_id}"

class Recording(models.Model):
    recording_name = models.CharField(max_length=150)
    recording_location = models.CharField(max_length=150)

    def __str__(self):
        return f"{self.recording_name} {self.recording_location}"
    
