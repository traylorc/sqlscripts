--customer.in.cincinnati.with.greater.than.average.total.sales--

select*
	from Customers
	where sales > (select avg(sales)
		from Customers) and city = 'Cincinnati'
			order by sales desc

	select avg(sales)
		from Customers