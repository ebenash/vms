# Generated by Django 2.2.3 on 2019-07-26 18:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0010_auto_20190726_1833'),
    ]

    operations = [
        migrations.CreateModel(
            name='ModelName',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'verbose_name_plural': 'History',
            },
        ),
    ]
