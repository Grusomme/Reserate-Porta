# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-07-16 23:29
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('canalis_door', '0001_initial'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Test_door',
            new_name='TestDoor',
        ),
        migrations.RenameField(
            model_name='testdoor',
            old_name='door_is_locked',
            new_name='doorIsLocked',
        ),
    ]
