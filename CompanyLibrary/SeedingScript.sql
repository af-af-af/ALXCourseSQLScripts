use WebCompany
go

select * from Employees
select * from Departments
select * from Paychecks

insert into Departments(Id, DepartmentName)
values (NEWID(), 'HR'),
	(NEWID(), 'IT'),
	(NEWID(), 'PR'),
	(NEWID(), 'R&D'),
	(NEWID(), 'Office')
go

insert into Paychecks(Id, PaycheckNumber)
values(NEWID(), '111'),
(NEWID(), '121'),
(NEWID(), '131'),
(NEWID(), '141')

insert into employees(Id, FirstName, LastName, Email, DepartmentId, PaycheckId)
values(NEWID(), 'Tomasz', 'IeeeMacarena', 'a@kotamaala.com', 'B02DA1C5-A687-4414-B210-553B05AB3A4B', '1FF1E649-E955-40DC-8988-661E73CC4A2C'),
(NEWID(), 'Jacek', 'Aaa', 'aa@kotamaala.com', 'CAC12295-DF8F-4659-A305-10C2FAE1BD4B', '3C6AD487-5453-418D-BB8F-A0E3C2387B43'),
(NEWID(), 'Piotr', 'BBB', 'bbb@kotamaala.com', 'CAC12295-DF8F-4659-A305-10C2FAE1BD4B', 'C8176397-4104-4BB5-B2A0-CB921881C842'),
(NEWID(), 'Misio', 'Yya', 'pp@kotamaala.com', '275880C8-58A5-4668-A16A-1975CDCF40E6', 'FCD908E8-26C4-4FAF-814A-E52344C3A73D')