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

create table paychecks
(
	id uniqueidentifier not null primary key,
	paycheck_number varchar(50) not null,
	payment_gross decimal(10,2) not null default 0.00,
	payment_net decimal(10,2) not null default 0.00,
	employee_id uniqueidentifier not null foreign key references employees(id),
	paid bit default 0
)
go
