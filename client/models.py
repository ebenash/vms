from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.utils.translation import ugettext_lazy as _



# Create your models here.
class Company(models.Model):
    company_name = models.CharField(max_length=150)
    company_location = models.CharField(max_length=150)
    phone_number = models.CharField(max_length=100)

    class Meta:
        verbose_name_plural = _("Companies")

    def __str__(self):
        return f"{self.company_name}"

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    address = models.CharField(max_length=150)
    phone_number = models.CharField(max_length=100)
    company_id = models.ForeignKey(Company, on_delete=models.CASCADE)
    access = models.CharField(max_length=65)

    @receiver(post_save, sender=User)
    def create_user_profile(sender, instance, created, **kwargs):
        if created:
            Profile.objects.create(user=instance)

    @receiver(post_save, sender=User)
    def save_user_profile(sender, instance, **kwargs):
        instance.profile.save()

    def __str__(self):
        return f"{self.user} {self.company_id}"

class Vehicle_Type(models.Model):
    type_name = models.CharField(max_length=150)
    description = models.TextField(blank=True, null=True)

    class Meta:
        verbose_name_plural = _("Vehicle Types")

    def __str__(self):
        return f"{self.type_name}"

class Tracker(models.Model):
    tracker_name = models.CharField(max_length=150)
    description = models.TextField(blank=True, null=True)
    tracker_listen = models.CharField(max_length=250)

    def __str__(self):
        return f"{self.tracker_name} - {self.tracker_listen}"


class Vehicle(models.Model):
    brand_model = models.CharField(max_length=100)
    reg_number = models.CharField(max_length=65)
    brand_name = models.CharField(max_length=100)
    brand_model = models.CharField(max_length=100)
    year = models.CharField(max_length=10)
    vehicle_type_id = models.ForeignKey(Vehicle_Type, on_delete=models.CASCADE, default='0')
    seats = models.IntegerField()
    color = models.CharField(max_length=65)
    description = models.TextField(blank=True, null=True)
    tracker =  models.OneToOneField(Tracker, on_delete=models.CASCADE, null=True)

    def __str__(self):
        return f"{self.reg_number} - {self.brand_name} - {self.brand_model} - {self.vehicle_type_id}"

class Camera_Feed(models.Model):
    feed_name = models.CharField(max_length=150)
    description = models.TextField(blank=True, null=True)
    feed = models.CharField(max_length=250)
    assigned_vehicle =  models.ForeignKey(Vehicle, on_delete=models.CASCADE, null=True)

    class Meta:
        verbose_name_plural = _("Camera Feeds")

    def __str__(self):
        return f"{self.feed_name} - {self.feed}"

class Recording(models.Model):
    recording_name = models.CharField(max_length=150)
    recording_location = models.CharField(max_length=150)

    def __str__(self):
        return f"{self.recording_name} {self.recording_location}"
    
