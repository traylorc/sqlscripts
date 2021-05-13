select Name, City, State, o.Description, ol.Description, Product, Quantity, Price, Quantity * Price 'Line Total'
	from Customers c
	join Orders o
		on c.Id = o.CustomerId
	join OrderLines ol
		on o.id = ol.OrdersId
		where name like 'Char%'