# Generated by Django 2.2.3 on 2019-07-23 03:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Recordings',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('recording_name', models.CharField(max_length=150)),
                ('recording_location', models.CharField(max_length=150)),
            ],
        ),
    ]