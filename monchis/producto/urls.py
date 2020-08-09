from django.urls import path
from .views import ProductoLista, contact, productosgrafica, index

app_name = 'producto'
urlpatterns = [
    path('', index, name='index'),
    path('productosgrafica', productosgrafica, name='grafica'),
    path('contacto', contact, name='contacto'),
    path('products', ProductoLista, name='products'),
]
