from django.contrib import admin
from .models import *


class ContactoAdmin(admin.ModelAdmin):
    list_display = [
     'id', 'nombre', 'email', 'telefono', 'descripcion'
     ]
    search_fields = ['nombre', 'descripcion']


admin.site.register(Contacto, ContactoAdmin)
