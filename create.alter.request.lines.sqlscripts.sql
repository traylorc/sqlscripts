create or alter procedure AddRequestLines
	@RequestId int = 0,
	@ProductId int = 0,
	@Quantity int = 0
as 
	begin
	declare @ProductName varchar(20)
		select @ProductName = id from Products where name = @ProductName
	insert RequestLines (RequestId, ProductId, Quantity)
		values (@RequestId, @ProductName, @Quantity)
	return -1	

	end;
	go
	exec AddRequestLines 2, 2, 3
	
	exec AddRequestLines 3, 1, 5
	
	exec AddRequestLines 4, 3, 20
	