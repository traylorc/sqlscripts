create or alter procedure DeleteVendor
	@id int = 0
as
begin
	if not exists (select 1 from Vendors where id = @id)
		begin
			print 'vendor not found'
			return -1
		end
		delete from Vendors
			where Id = @id
		return 0;
end
select * from Users
