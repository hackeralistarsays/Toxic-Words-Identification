from django.urls import path
from . import views

app_name = 'comp_493'
urlpatterns = [
    path('', views.home,name = 'home')
    
]