import rest_framework
from shop.models import Basket, Product, ProductBasket
from shop.serializer import BasketSerializer, ProductBasketSerializer, ProductSerializer
from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticated
from allauth.socialaccount.providers.google.views import GoogleOAuth2Adapter
from allauth.socialaccount.providers.oauth2.client import OAuth2Client
from dj_rest_auth.registration.views import SocialLoginView


class ProductViewSet(ModelViewSet):
    serializer_class = ProductSerializer
    queryset = Product.objects.all()


class ProductBasketViewSet(ModelViewSet):
    serializer_class = ProductBasketSerializer
    queryset = ProductBasket.objects.all()


class BasketViewSet(ModelViewSet):
    permission_classes = (IsAuthenticated,)
    serializer_class = BasketSerializer
    queryset = Basket.objects.all()


class GoogleLogin(SocialLoginView):
    adapter_class = GoogleOAuth2Adapter
    client_class = OAuth2Client