select City, sum(sales)
	from customers
	group by city
	having sum(sales) > 600000
	