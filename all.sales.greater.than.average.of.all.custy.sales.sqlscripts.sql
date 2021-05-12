-- live feed of all sales over average of all customer sales

select *
	from Customers
	where sales > (select avg(sales)
			from Customers)
		order by Sales desc

	