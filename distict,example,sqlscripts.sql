--customers in distinct cities

select *
	from Customers
	where City in (select distinct city
		from Customers
		where city like 'cin%' or City like 'col%')

	select distinct city
		from Customers
		where city like 'cin%' or City like 'col%'