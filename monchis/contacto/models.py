from django.db import models

class Contacto(models.Model):
    nombre = models.CharField('Cliente', max_length=50)
    email = models.EmailField('E-mail', max_length=50, null=True, blank=True)
    telefono = models.PositiveIntegerField('Telefono')
    descripcion = models.CharField('Mensaje', max_length=200)

    def __str__(self):
        return self.nombre

    class Meta:
        db_table = 'contacto'
        verbose_name = 'Contacto'
        verbose_name_plural = 'Contactos'