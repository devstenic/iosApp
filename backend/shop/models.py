from django.db import models
from django.db.models.deletion import CASCADE

class Product(models.Model):
    title = models.CharField(max_length=20)
    description = models.TextField(max_length=100)
    price = models.DecimalField(decimal_places=2, max_digits=4)
    image = models.URLField(max_length = 200, blank=True)

    def __str__(self) -> str:
        return self.title


class ProductBasket(models.Model):
    product = models.ForeignKey(Product, on_delete=CASCADE)
    quantity = models.PositiveIntegerField()

    def __str__(self) -> str:
        return f"{self.product.title} - quantity: {self.quantity}"


class Basket(models.Model):
    products = models.ManyToManyField(ProductBasket)
