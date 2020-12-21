from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.utils import timezone
# Create your views here.
from .models import *

now = timezone.now();
def home(request):
    messages = Message.objects.all();
    context = {'MobApp':messages}
    return render(request,'MobApp/home.html', context);

def notification(request):
    return render(request,'MobApp/notification.html');

def index(request):
    return render(request,'MobApp/index.html');

def account(request):
    chats = Message.objects.all()
    context = {'MobApp':chats}
    return render(request,'MobApp/account.html', context);

def login(request):
    return render(request,'MobApp/login.html');

def register(request):
    return render(request,'MobApp/register.html');

def profile(request):
    return render(request,'MobApp/profile/edit-profile.html');

def launch(request):
    return render(request,'MobApp/launch.html');

def loginregister(request):
    return render(request,'MobApp/loginregister.html');