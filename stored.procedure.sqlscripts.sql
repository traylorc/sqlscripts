create or alter procedure finduserbyusername
	@username varchar(30) = '',
	@password varchar(30) = ''
as
begin
	if @username = ''
		begin
			print '@Username is Required'
		end;
		if @password<> ''
		begin
	select * 
		from Users
			where Username = @username and password = @password;
		end
		else 
			begin
			select * 
		from Users
			where Username = @username;
			end
end;

exec finduserbyusernameandpassword 'Amazonanon', 'Wonderwoman'