begin transaction

insert Major (code,	Description, MinSAT) 
	values ('UWBW', 'weaving', 400)

rollback

select* 
	from Major