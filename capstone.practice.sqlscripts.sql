
use master
drop database if exists PrsDb;

create database PrsDb;
use PrsDb
--Start creating tables--

create table Users (
		Id int primary key identity (1,1),
		Username varchar(30) not null unique,
		Password varchar(30) not null,
		Firstname varchar(30) not null,
		Lastname varchar(30) not null,
		Phone varchar(12) null,
		Email varchar(255) null,
		IsReviewer bit not null, 
		IsAdmin bit not null
                     );

create table Vendors (
		Id int primary key identity (1,1),
		Code varchar(30) not null unique,
		Name varchar(30) not null,
		Address varchar(30) not null,
		City varchar(30) not null,
		State char(2) not null,
		Zip char(5),
		Phone varchar(12),
		Email varchar(255)
                      );

create table Products (
		Id int primary key identity(1,1),
		VendorId int not null foreign key references Vendors(Id),
		PartNbr varchar(30) not null unique,
		Name varchar(30) not null,
		Price decimal(11,2) not null,
		Unit varchar(30) not null,
		PhotoPath varchar(255) null
						);

create table Requests (
		Id int primary key identity(1,1),
		UserId int foreign key references Users(Id),
		Description varchar(80) not null,
		Justification varchar(80) not null,
		RejectReasoning varchar(80) null,
		DeliveryMode varchar(20) not null,
		Status varchar(10) not null,
		Total decimal(11,2) not null default 0,
						);

create table RequestLines (
		Id int primary key identity(1,1),
		RequestId int foreign key references Requests(Id),
		ProductId int foreign key references Products(Id),
		Quantity int not null default 1
							);



insert Users (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	values ('Amazonanon', 'Wonderwoman', 'Jeff', 'Bezos', '777-555-0000', 'Jbez@amazon.com', 0, 1),
			('Staplesauce', 'stapleshasstaples', 'Alex', 'Douglas', '444-666-9999', 'Adoug@staples.com', 1, 0),
			('GameStopit', 'stonksbaby', 'George', 'Sherman', '333-999-1111', 'Gsherman@gamestop.com', 0, 0);










