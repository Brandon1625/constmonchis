# Generated by Django 2.2.4 on 2020-08-08 20:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contacto', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contacto',
            name='telefono',
            field=models.PositiveIntegerField(verbose_name='Telefono'),
        ),
    ]