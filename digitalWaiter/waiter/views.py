from django.shortcuts import render, redirect
from .models import Category, Item, Order
from .forms import OrderForm
# Create your views here.

def intro_page(request):
	return render(request, 'waiter/intro.html')


def homepage(request):
	categories = Category.objects.all()
	context = {'categories': categories}
	return render(request, 'waiter/home.html', context)

def category_item(request, category_id):
	items = Item.objects.filter(category_id=category_id)
	context = {'category_items': items}
	return render(request, 'waiter/category_item.html', context)


def item(request, item_id, category_id):
	item = Item.objects.get(id=item_id, category_id=category_id)
	if request.method == "POST":
		form = OrderForm(request.POST)
		data = request.POST
		quantity = data['quantity']
		price = item.price
		total_price = int(quantity) * int (price)
		if form.is_valid():
			order = Order.objects.create(category_id=category_id, item_id=item_id, quantity=quantity,
									 total_price=total_price)

			if order:
				print("working")
				return render(request, 'waiter/cart.html')

	context = {'order_manage_form': OrderForm, 'item': item}

	return render(request, 'waiter/item.html', context)



# def manage_order(request, item_id):
# 	context = {'order_manage_form': forms.OrderForm}
# 	return render(request, 'waiter/manage_order.html', context)


def my_cart(request):
	orders = Order.objects.filter(is_delivered=False)
	sub_total_price = sum(order.total_price for order in orders)
	grand_total_price = sub_total_price + 15
	print(sub_total_price)

	context = {'orders': orders, 'sub_total_price': sub_total_price, 'grand_total_price': grand_total_price}
	return render(request, 'waiter/cart.html', context)

def check_out(request):
	orders = Order.objects.filter(is_delivered=False)
	for order in orders:
		order.is_delivered = True
		order.save()

	return redirect('/')

def remove_from_cart(request, order_id):
	order = Order.objects.get(id=order_id)
	if not order.is_delivered:
		order.is_delivered=True
		order.save()
	return redirect('/waiter/my_cart')







# def add_to_cart(request, item_id, category_id):
# 	item = Item.objects.get(id=item_id, category_id=category_id)
# 	if request.method == "POST":
# 		data = request.POST
# 		quantity = data['quantity']
# 		price = item.price
# 		total_price = quantity * price
# 		order = Order.objects.create(category_id=category_id, item_id=item_id, quantity=quantity, total_price=total_price )
# 		if order:
# 			print("working")
# 			return render(request, 'waiter/cart.html')
#
# 	context = {'order_manage_form': forms.OrderForm, 'item': item}
#
# 	return render(request, 'waiter/item.html', context)
#


