create database WebCompany
go
use WebCompany
go

create table Departments
(
	Id uniqueidentifier not null primary key,
	DepartmentName nvarchar(50) not null unique
)
go

create table Paychecks
(
	Id uniqueidentifier not null primary key,
	PaycheckNumber varchar(50) not null,
	PaymentGross decimal(10,2) not null default 0.00,
	PaymentNet decimal(10,2) not null default 0.00,
	IsPaid bit default 0
)
go

create table Employees
(
	Id uniqueidentifier not null primary key,
	FirstName nvarchar(100) not null,
	LastName nvarchar(100) not null,
	Email nvarchar (50) unique not null,
	DepartmentId uniqueidentifier not null foreign key references Departments(Id),
	PaycheckId uniqueidentifier not null foreign key references Paychecks(Id)
)
go
