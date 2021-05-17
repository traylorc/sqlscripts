create or alter procedure AddVendor
		@Code varchar(10)=null,
		@Name varchar(30) =null,
		@address varchar(50) = null,
		@City varchar(20) = null,
		@State char(2) = null,
		@Zip char(5) = null,
		@Phone varchar(12) = null,
		@Email varchar (255) = null
as
begin
	if exists (select 1 from Vendors where Code = @code)
		begin
			print 'vendor code already exists'
			return -1;
		end;
	insert Vendors (Code, Name, Address, City, State, Zip, Phone, Email)
		values (@code, @name, @address, @city, @state, @zip, @phone, @email);
	return 0

end;
go
