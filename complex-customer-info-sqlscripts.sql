select o.id 'orderId', o.Date, o.Description, c.name 'customer', 
		concat(c.city, ' ', c.state) 'location', ol.Product, ol.Description,
		ol.Quantity, ol.Price, ol.Quantity * ol.Price 'line total'
	from Orders o
	join Customers c
		on o.CustomerId = c.Id
	join OrderLines ol
		on o.Id = ol.OrdersId
	where not c.city = 'cleveland'
		order by price asc