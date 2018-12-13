# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)
    name = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()
    last_name = models.CharField(max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DashboardAirkoreadata(models.Model):
    id = models.IntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    cograde = models.IntegerField(db_column='coGrade', blank=True, null=True)  # Field name made lowercase.
    covalue = models.TextField(db_column='coValue', blank=True, null=True)  # Field name made lowercase.
    datatime = models.TextField(db_column='dataTime', blank=True, null=True)  # Field name made lowercase.
    khaigrade = models.IntegerField(db_column='khaiGrade', blank=True, null=True)  # Field name made lowercase.
    khaivalue = models.IntegerField(db_column='khaiValue', blank=True, null=True)  # Field name made lowercase.
    mangname = models.TextField(db_column='mangName', blank=True, null=True)  # Field name made lowercase.
    no2grade = models.IntegerField(db_column='no2Grade', blank=True, null=True)  # Field name made lowercase.
    no2value = models.TextField(db_column='no2Value', blank=True, null=True)  # Field name made lowercase.
    o3grade = models.IntegerField(db_column='o3Grade', blank=True, null=True)  # Field name made lowercase.
    o3value = models.TextField(db_column='o3Value', blank=True, null=True)  # Field name made lowercase.
    pm10grade = models.IntegerField(db_column='pm10Grade', blank=True, null=True)  # Field name made lowercase.
    pm10grade1h = models.IntegerField(db_column='pm10Grade1h', blank=True, null=True)  # Field name made lowercase.
    pm10value = models.IntegerField(db_column='pm10Value', blank=True, null=True)  # Field name made lowercase.
    pm10value24 = models.IntegerField(db_column='pm10Value24', blank=True, null=True)  # Field name made lowercase.
    pm25grade = models.IntegerField(db_column='pm25Grade', blank=True, null=True)  # Field name made lowercase.
    pm25grade1h = models.IntegerField(db_column='pm25Grade1h', blank=True, null=True)  # Field name made lowercase.
    pm25value = models.IntegerField(db_column='pm25Value', blank=True, null=True)  # Field name made lowercase.
    pm25value24 = models.IntegerField(db_column='pm25Value24', blank=True, null=True)  # Field name made lowercase.
    so2grade = models.IntegerField(db_column='so2Grade', blank=True, null=True)  # Field name made lowercase.
    stnname = models.TextField(db_column='stnName', blank=True, null=True)  # Field name made lowercase.
    stnaddr = models.TextField(db_column='stnAddr', blank=True, null=True)  # Field name made lowercase.
    stn_fk = models.ForeignKey('DashboardAirkoreastations', models.DO_NOTHING, db_column='stn_fk', blank=True, null=True)
    so2value = models.TextField(db_column='so2Value', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'dashboard_airkoreadata'


class DashboardAirkoreastations(models.Model):
    id = models.IntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    addr = models.TextField(blank=True, null=True)
    dmx = models.DecimalField(db_column='dmX', max_digits=10, decimal_places=5, blank=True, null=True)  # Field name made lowercase. max_digits and decimal_places have been guessed, as this database handles decimal fields as float
    item = models.TextField(blank=True, null=True)
    mangname = models.TextField(db_column='mangName', blank=True, null=True)  # Field name made lowercase.
    map = models.TextField(blank=True, null=True)
    oper = models.TextField(blank=True, null=True)
    photo = models.TextField(blank=True, null=True)
    stationname = models.TextField(db_column='stationName', blank=True, null=True)  # Field name made lowercase.
    year = models.TextField(blank=True, null=True)
    geom = models.TextField()
    dmy = models.DecimalField(db_column='dmY', max_digits=10, decimal_places=5, blank=True, null=True)  # Field name made lowercase. max_digits and decimal_places have been guessed, as this database handles decimal fields as float

    class Meta:
        managed = False
        db_table = 'dashboard_airkoreastations'


class DjangoAdminLog(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    action_flag = models.PositiveSmallIntegerField()

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'
