create or alter procedure AddProduct
	@PartNbr varchar(30) = null,
	@Name varchar(30) = null,
	@Price decimal(11,2) = null,
	@Unit varchar(30) = null,
	@PhotoPath varchar(255) = null,
	@VendorName varchar(30) = null

as
	begin
	if @VendorName = null 
		begin
		print'vendor name is required'
		return -1
		end;
	declare @vendorid int = 0
	select top 1 @vendorid = id from Vendors where name like '%@VendorName%';
	insert Products (PartNbr, Name, Price, Unit, PhotoPath, VendorId)
		values (@PartNbr, @Name, @Price, @Unit, @PhotoPath, @vendorid);
		if @@ROWCOUNT <> 1
		begin
			print 'Error: insert failed';
			return -1;
		end;
		return 0;
	end;
	go
	exec AddProduct 'watch', 'seiko watch', 100, 'each', null, 'kroger'