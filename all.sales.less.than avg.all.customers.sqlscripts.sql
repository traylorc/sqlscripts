--list of customers for sales less than avg of all customers

select *
	from Customers
		where Sales < (select avg (sales)
		from Customers)
		order by sales desc
	
	