/*
create table Customers (
			Id int primary key identity (1,1),
			Code varchar(10) not null unique,
			Name varchar(30) not null,
			Sales decimal(9,2) not null default 0 check (sales >= 0),
			Active bit not null default 1,
			Created datetime not null default getdate()
						);
*/
/*
insert Customers (Name, Code)
	values ('Total Quality Logistics', 'TQL')
insert Customers (Name, Code)
	values ('Mihoyo', 'MYO')
insert customers (name, code)
	values ('Playstation', 'PSN')
*/
/*
alter table customers
	add Updated datetime null;
*/
/*
alter table Customers
	alter column name varchar (50)not null;
*/
select *
	from customers


		

 

