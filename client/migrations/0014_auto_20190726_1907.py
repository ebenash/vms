# Generated by Django 2.2.3 on 2019-07-26 19:07

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0013_auto_20190726_1846'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='camera_feed',
            options={'verbose_name_plural': 'Camera Feeds'},
        ),
        migrations.RemoveField(
            model_name='profile',
            name='password',
        ),
        migrations.RemoveField(
            model_name='profile',
            name='username',
        ),
    ]