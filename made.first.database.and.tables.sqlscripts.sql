create database Bootcamp;
use Bootcamp;
create table Students (
	Id int primary key identity(1,1),
	Firstname varchar(30) not null,
	Lastname varchar(30) not null,
	Address varchar(50) not null,
	City varchar(50) not null,
	State char(2) not null,
	Zipcode varchar(10) not null,
	Assessmentscore int not null

);

create table Assessments(
	Id int primary key identity(1,1),
	StudentId int not null foreign key references Students(Id),
	Topic varchar(30) not null,
	Score int not null,

);
/*
insert Students (Firstname, Lastname, Address, City, State, Zipcode, Assessmentscore)
	values	('Charlie','Traylor','5553 Old Blue Rock Rd Apt 141', 'Groesbeck', 'OH', '45247', '89')
*/
/*
insert Assessments (StudentId, Topic, Score)
	values ('1', 'Git/Github', '90')
*/
	select *
		from Students s
			join Assessments a
				on a.StudentId = s.Id