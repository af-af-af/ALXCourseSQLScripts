create database company
go
use company
go

create table departments
(
	id uniqueidentifier not null primary key,
	department_name nvarchar(50) not null unique
)
go

create table employees
(
	id uniqueidentifier not null primary key,
	first_name nvarchar(100) not null,
	last_name nvarchar(100) not null,
	email nvarchar (50) unique not null,
	department_id uniqueidentifier not null foreign key references departments(id)
)
go