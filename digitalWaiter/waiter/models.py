from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator, MinLengthValidator, MaxLengthValidator


# Create your models here.
class Table(models.Model):
	name = models.CharField(max_length=200)
	created_date = models.DateTimeField(auto_now_add=True)

	def __str__(self):
		return self.name


class Category(models.Model):
	name = models.CharField(max_length=200)
	description = models.TextField(blank=True, null=True)
	added_date = models.DateTimeField(auto_now_add=True)


	def __str__(self):
		return self.name


class Item(models.Model):
	category = models.ForeignKey(Category, on_delete=models.CASCADE)
	name = models.CharField(max_length=200)
	description = models.TextField(blank=True, null=True)
	price = models.IntegerField(validators=[MinValueValidator(1), MaxValueValidator(1000)], blank=True, null=True)
	file = models.FileField(upload_to='static/uploads', blank=True, null=True)
	added_date = models.DateTimeField(auto_now_add=True)

	def __str__(self):
		return self.name

class Order(models.Model):
	category = models.ForeignKey(Category, on_delete=models.CASCADE )
	item = models.ForeignKey(Item, on_delete=models.CASCADE, related_name='item')
	quantity = models.IntegerField(validators=[MinValueValidator(1), MaxValueValidator(1000)], blank=True, null=True)
	added_date = models.DateTimeField(auto_now_add=True)
	total_price = models.BigIntegerField(blank=True, null=True)
	is_delivered = models.BooleanField(default=False)


	def __str__(self):
		return self.item
