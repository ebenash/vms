# Generated by Django 2.2.3 on 2019-07-24 20:36

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0004_auto_20190724_1925'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='vehicle',
            name='vehicle_type',
        ),
        migrations.AddField(
            model_name='vehicle',
            name='vehicle_type_id',
            field=models.ForeignKey(default=0, on_delete=django.db.models.deletion.CASCADE, to='client.Vehicle_Type'),
        ),
    ]
