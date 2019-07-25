from django.contrib import admin
from client.models import Vehicle
from client.models import Vehicle_Type
from client.models import Client
from client.models import Recording

admin.site.register(Client) 
admin.site.register(Vehicle) 
admin.site.register(Vehicle_Type)
admin.site.register(Recording)  
# Register your models here.
#admin.site.site_header = "VMS Dashboard"
