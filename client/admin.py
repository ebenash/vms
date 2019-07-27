from django.contrib import admin
from client.models import Profile
from client.models import Vehicle
from client.models import Vehicle_Type
from client.models import Company
from client.models import Recording
from client.models import Camera_Feed
from client.models import Tracker
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin as AuthUserAdmin

class UserProfileInline(admin.StackedInline):
	 model = Profile
	 max_num = 1
	 can_delete = False

class UserAdmin(AuthUserAdmin):
	inlines = [UserProfileInline]

"""class VehicleCameras(admin.StackedInline):
	model = Camera_Feed.assigned_vehicle
	extra = 1

class VehicleAdmin(admin.ModelAdmin):
	inline = [VehicleCameras]"""

# Register your models here.

admin.site.unregister(User)
admin.site.register(User, UserAdmin)
admin.site.register(Company) 
admin.site.register(Vehicle) 
admin.site.register(Vehicle_Type)
admin.site.register(Recording)  
admin.site.register(Camera_Feed)
admin.site.register(Tracker)  
#admin.site.site_header = "VMS Dashboard"




