from django.contrib import admin
from shop.models import Product, ProductBasket, Basket

admin.site.register(ProductBasket)
admin.site.register(Product)
admin.site.register(Basket)
