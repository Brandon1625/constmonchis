from django.contrib import admin
from .models import *
from django.shortcuts import redirect
from import_export import resources
from import_export import fields
from import_export.admin import ExportMixin


class TipopagoAdmin(ExportMixin, admin.ModelAdmin):
    actions = ['informe']
    search_fields = ['tipo']
    list_filter = ['tipo']
    list_display = ['tipo']

    def informe(self, request, queryset):
        return redirect('/pagos')
    informe.short_description = 'Exportar tipos de pago'


class ModeloResourcePagos(resources.ModelResource):
    class Meta:
        model = Tipopago
        fields = ['tipo']
        export_order = ['tipo']

admin.site.register(Tipopago, TipopagoAdmin)
