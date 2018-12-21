from django.db import migrations, models
import djgeojson.fields

def create_geom(apps, schema_editor):
    AirKoreaStations = apps.get_model('dashboard', 'AirKoreaStations')
    for station in AirKoreaStations.objects.all():
        station.geom = {'type': 'Point', 'coordinates': [station.dmy, station.dmx]}
        station.save()

class Migration(migrations.Migration):

    dependencies = [
        ('dashboard',  '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='airkoreastations',
            name='geom',
            field=djgeojson.fields.PointField(default=[37.4026616, 127.1010097]),
        ),
        migrations.AlterField(
            model_name='airkoreastations',
            name='dmx',
            field=models.DecimalField(blank=True, db_column='dmX', decimal_places=10, max_digits=15, null=True),
        ),
        migrations.AlterField(
            model_name='airkoreastations',
            name='dmy',
            field=models.DecimalField(blank=True, db_column='dmY', decimal_places=10, max_digits=15, null=True),
        ),
        migrations.RunPython(create_geom),
    ]