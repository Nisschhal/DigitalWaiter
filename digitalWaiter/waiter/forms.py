from .models import Category, Item, Order
from django import forms

class MenuForm(forms.ModelForm):
	class Meta:
		model = Category
		fields = "__all__"

class ItemForm(forms.ModelForm):
	class Meta:
		model = Item
		fields = "__all__"

class OrderForm(forms.ModelForm):
	class Meta:
		model = Order
		fields = ['quantity']