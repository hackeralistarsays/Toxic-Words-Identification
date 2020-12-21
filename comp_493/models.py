from django.db import models

# Create your models here.

class User(models.Model):
    username = models.CharField(max_length = 100)
    email = models.CharField(max_length = 200)
    password = models.CharField(max_length = 200)
    created_at = models.DateTimeField(auto_now_add = True)


class Message(models.Model):
    message = models.CharField(max_length = 200)
    username = models.CharField(max_length = 200)
    toxic = models.BooleanField(default = False)
    posted = models.DateTimeField(auto_now_add = True)

    def __str__(self):
        return '%s %s' % (self.username, self.message)


class Post(models.Model):
    
    headline = models.CharField(max_length=255)
    body_text = models.TextField()
    pub_date = models.DateField()
    mod_date = models.DateField()
    
    n_comments = models.IntegerField()
    n_pingbacks = models.IntegerField()
    rating = models.IntegerField()

    def __str__(self):
        return self.headline