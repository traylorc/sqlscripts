insert Customers (name, City, State, Sales, Active)
	values	('acme mfg co 3', 'cincinnati', 'oh', 1000, 1),
			('acme mfg co 2', 'cincinnati', 'oh', 1000, 1),
			('acme mfg co 1', 'cincinnati', 'oh', 1000, 1);

UPDate Customers set 
	name = 'acme mfg co 1',
	sales = 0
	where name = 'acme mfg co 1'

	select * from Customers
	where name like'acme%'

	delete from Customers
		where name = 'acme mfg co 3'