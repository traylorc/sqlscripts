create or alter procedure AddUser
	@username varchar(30) = '',
	@password varchar(30) = '',
	@firstname varchar(30) = '',
	@lastname varchar(30) = '',
	@phone varchar(12) = null,
	@email varchar(255) = null,
	@isreviewer bit = false,
	@isadmin bit = false
as
begin
	if @username = '' or @password = '' or @firstname = '' or @lastname = '' 
	begin
	print 'Required data is not provided'
	return -1;
	end;
	if exists (select 1 from Users where Username = @username)
	begin
	print 'Username already exists'
	return -2;
	end;
insert into Users (Username, Password, Firstname, Lastname, Phone, Email, IsAdmin, IsReviewer)
	values (@username, @password, @firstname, @lastname, @phone, @email, @isadmin, @isreviewer)
end;
go
exec AddUser 'xx1', 'xx', 'xx', 'xx';

select* from Users