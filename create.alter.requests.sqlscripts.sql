create or alter procedure AddRequest
	@Description varchar(80) = '',
	@Justification varchar(80) = '',
	@DlvryMde varchar(30) = '',
	@Status varchar(10) = '',
	@Total decimal(11,2) = '',
	@Username varchar(30) = ''

as begin
	declare @UserId int = 0;
	select @UserId = id from users where Username = @Username
		insert Requests (UserId, Description, Justification, DeliveryMode, Status, Total)
			values (@UserId, @Description, @Justification, @DlvryMde, @Status, @total)
	return -2;
end;
go

exec AddRequest 'Staples', 'ImAllOut', 'Pickup', 'New', 2.99, 'Staplesauce'

exec AddRequest 'Echo Dot', 'BigNeed', 'Pickup', 'New', 49.99, 'Amazonanon'

exec AddRequest 'FNAF Hoodie', 'VCold', 'Pickup', 'New', 19.99, 'GameStopIt'

