--all orders and attached customer and order lines for each customer minus key and foreign key--

select c.name 'customer', o.Description 'order', ol.Description 'product', ol.Quantity 'quantity',
		ol.Price 'price', ol.Quantity * ol.Price 'line total'
	from Orders o
		join Customers c
			on o.CustomerId = c.Id
		join OrderLines ol
			on o.id = ol.OrdersId
			order by Name
