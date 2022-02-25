from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
	path('', views.intro_page),
	path("waiter/home", views.homepage),
	path('waiter/category_item/<int:category_id>/', views.category_item),
	path('waiter/item/<int:item_id>/<int:category_id>/', views.item),
	path('waiter/my_cart/', views.my_cart),
	path('waiter/check_out/', views.check_out),
	path('waiter/remove_from_cart/<int:order_id>', views.remove_from_cart)

]
