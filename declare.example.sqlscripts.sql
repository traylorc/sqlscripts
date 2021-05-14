declare @MinSales int = 30000;
declare @MaxSales int = 40000;
	

select*
	from Customers
		where sales >= @MinSales and sales<= @MaxSales