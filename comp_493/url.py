from django.urls import path
from django.conf.urls import url
from . import views

app_name = 'comp_493'
urlpatterns = [
   path(r'', views.index, name = 'index'),
   path(r'home/', views.home, name = 'home'),
   path(r'notification/', views.notification, name = 'notification'),
   path(r'account/', views.account, name = 'account'),
   path(r'login/', views.login, name = 'login'),
   path(r'profile/', views.profile, name = 'profile'),
   path(r'launch/', views.launch, name = 'launch'),
   path(r'register/', views.register, name = 'register'),
   path(r'loginregister/', views.loginregister, name = 'loginregister'),

]