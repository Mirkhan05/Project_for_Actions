from django.urls import path
from .views import home
from . import views

app_name = "main"

urlpatterns = [
    path("", views.home, name="home"),
]