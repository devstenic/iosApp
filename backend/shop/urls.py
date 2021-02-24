from shop.views import GoogleLogin, ProductBasketViewSet, ProductViewSet, BasketViewSet
from django.urls.conf import include, path
from rest_framework import urlpatterns
from rest_framework.routers import DefaultRouter

router = DefaultRouter()
router.register("product", ProductViewSet, basename="product")
router.register("product_basket", ProductBasketViewSet, basename="products_basket")
router.register("basket", BasketViewSet, basename="basket")

urlpatterns = [
    path("", include(router.urls)),
    path('auth/google', GoogleLogin.as_view(), name='google_login'),

]