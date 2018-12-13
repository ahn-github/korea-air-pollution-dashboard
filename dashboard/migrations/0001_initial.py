# Generated by Django 2.1.4 on 2018-12-13 07:09

from django.db import migrations, models
import djgeojson.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AirKoreaData',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('cograde', models.IntegerField(blank=True, db_column='coGrade', null=True)),
                ('covalue', models.TextField(blank=True, db_column='coValue', null=True)),
                ('datatime', models.TextField(blank=True, db_column='dataTime', null=True)),
                ('khaigrade', models.IntegerField(blank=True, db_column='khaiGrade', null=True)),
                ('khaivalue', models.IntegerField(blank=True, db_column='khaiValue', null=True)),
                ('mangname', models.TextField(blank=True, db_column='mangName', null=True)),
                ('no2grade', models.IntegerField(blank=True, db_column='no2Grade', null=True)),
                ('no2value', models.TextField(blank=True, db_column='no2Value', null=True)),
                ('o3grade', models.IntegerField(blank=True, db_column='o3Grade', null=True)),
                ('o3value', models.TextField(blank=True, db_column='o3Value', null=True)),
                ('pm10grade', models.IntegerField(blank=True, db_column='pm10Grade', null=True)),
                ('pm10grade1h', models.IntegerField(blank=True, db_column='pm10Grade1h', null=True)),
                ('pm10value', models.IntegerField(blank=True, db_column='pm10Value', null=True)),
                ('pm10value24', models.IntegerField(blank=True, db_column='pm10Value24', null=True)),
                ('pm25grade', models.IntegerField(blank=True, db_column='pm25Grade', null=True)),
                ('pm25grade1h', models.IntegerField(blank=True, db_column='pm25Grade1h', null=True)),
                ('pm25value', models.IntegerField(blank=True, db_column='pm25Value', null=True)),
                ('pm25value24', models.IntegerField(blank=True, db_column='pm25Value24', null=True)),
                ('so2grade', models.IntegerField(blank=True, db_column='so2Grade', null=True)),
                ('so2value', models.TextField(blank=True, db_column='so2Value', null=True)),
                ('stnname', models.TextField(blank=True, db_column='stnName', null=True)),
                ('stnaddr', models.TextField(blank=True, db_column='stnAddr', null=True)),
            ],
        ),
        migrations.CreateModel(
            name='AirKoreaStations',
            fields=[
                ('id', models.AutoField(db_column='ID', primary_key=True, serialize=False)),
                ('addr', models.TextField(blank=True, null=True)),
                ('dmx', models.DecimalField(blank=True, db_column='dmX', decimal_places=10, max_digits=15, null=True)),
                ('dmy', models.DecimalField(blank=True, db_column='dmY', decimal_places=10, max_digits=15, null=True)),
                ('item', models.TextField(blank=True, null=True)),
                ('mangname', models.TextField(blank=True, db_column='mangName', null=True)),
                ('map', models.TextField(blank=True, null=True)),
                ('oper', models.TextField(blank=True, null=True)),
                ('photo', models.TextField(blank=True, null=True)),
                ('stationname', models.TextField(blank=True, db_column='stationName', null=True)),
                ('year', models.TextField(blank=True, null=True)),
                ('geom', djgeojson.fields.PointField(default=[37.4026616, 127.1010097])),
            ],
        ),
    ]
