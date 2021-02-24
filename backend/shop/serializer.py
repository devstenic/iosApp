from shop.models import Basket, Product, ProductBasket
from rest_framework import serializers

class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = "__all__"

class ProductBasketSerializer(serializers.ModelSerializer):
    product = ProductSerializer()

    class Meta:
        model = ProductBasket
        fields = "__all__"


class BasketSerializer(serializers.ModelSerializer):
    products = ProductBasketSerializer(many=True)

    class Meta:
        model = Basket
        fields = ("id", "products")