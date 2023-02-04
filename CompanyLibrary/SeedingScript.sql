use company
go

insert into departments(id, department_name)
values (NEWID(), 'HR'),
	(NEWID(), 'IT'),
	(NEWID(), 'PR'),
	(NEWID(), 'R&D'),
	(NEWID(), 'Office')
go

insert into employees(id, first_name, last_name, email, department_id)
values(NEWID(), 'Tomasz', 'IeeeMacarena', 'a@kotamaala.com', 'FA50E322-A986-4F5D-8776-328E9A7E888A'),
(NEWID(), 'Jacek', 'Aaa', 'aa@kotamaala.com', 'FA50E322-A986-4F5D-8776-328E9A7E888A'),
(NEWID(), 'Piotr', 'BBB', 'bbb@kotamaala.com', '4656040C-EE24-44D1-98B6-C534E93CA2FA'),
(NEWID(), 'Misio', 'Yya', 'pp@kotamaala.com', '886EEE76-1508-44A6-A172-C2A5255B9DA6')

insert into paychecks(id, paycheck_number, employee_id)
values (NEWID(), '1/1/2023', '96A60F63-18FA-480B-B606-F46300D9ED8B')
