--add custy my name, sales, city, state, order via FK, 3 lines to order 1, 2, 3,--

insert Customers (Name, City, State, sales, Active)
	values ('Charlie T', 'Cincinatti', 'OH', 2500, 1)

insert orders (Date, Description, CustomerId)
	values ('1994-11-22', 'Charles order', (select id
										from Customers 
											where city = 'Cincinatti' and name like 'Char%'))

insert OrderLines (OrdersId, Product, Description, Quantity, Price)
	values  ((select id from Orders where Description like 'Char%'), 'Pickles', 'Dill', 400, 2),
			((select id from Orders where Description like 'Char%'), 'Pickles', 'Dill', 700, 2),
			((select id from Orders where Description like 'Char%'), 'Pickles', 'Dill', 11, 2)

select * 
	from Customers c
	join Orders o
		on c.Id = o.CustomerId
	join OrderLines ol
		on o.id = ol.OrdersId
		where name like 'Char%'
	
	
	

		