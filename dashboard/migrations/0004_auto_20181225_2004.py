# Generated by Django 2.1.4 on 2018-12-25 11:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0003_auto_20181221_1753'),
    ]

    operations = [
        migrations.AlterField(
            model_name='airkoreadata',
            name='covalue',
            field=models.FloatField(blank=True, db_column='coValue', null=True),
        ),
        migrations.AlterField(
            model_name='airkoreadata',
            name='no2value',
            field=models.FloatField(blank=True, db_column='no2Value', null=True),
        ),
        migrations.AlterField(
            model_name='airkoreadata',
            name='o3value',
            field=models.FloatField(blank=True, db_column='o3Value', null=True),
        ),
        migrations.AlterField(
            model_name='airkoreadata',
            name='so2value',
            field=models.FloatField(blank=True, db_column='so2Value', null=True),
        ),
    ]
