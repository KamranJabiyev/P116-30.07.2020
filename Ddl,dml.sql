create database P116

drop database P116

use P116;

create table Student(
	Id int,
	Firstname nvarchar(100),
	Surname nvarchar(100)
)

drop table Student

alter table Student 
add Age int,Groups nvarchar(100)

alter table Student
drop column Age,Groups

exec sp_rename "Student","Stu"

exec sp_rename "Stu","Student"

exec sp_rename "Student.Surname","Lastname"

insert into Student 
values(1,'Hesen','Hesenli')

insert into Student
values(2,'Tural','Mehdiyev'),
	(2,'Ulvi','Mecidov'),
	(4,'Orxan','Memmedli')

insert into Student(Id,Firstname)
values(5,'Zaur')

select * from Student

select Firstname,Lastname from Student

select * from Student 
--where Id=1
--where Id>2
--where Id>1 AND Firstname='Ulvi'
--where Id>3 OR Firstname='Hesen'
--where Id Between 2 AND 5
--where Id in(2)
--where Id>2 And Id<5

update Student set Firstname='Elnur',Lastname='Qulamli'
where Id=3

delete from Student
where Id=1

--constraint

create table Students(
	Id int identity primary key,
	Firstname nvarchar(100) not null,
	Lastname nvarchar(100),
	Email nvarchar(255) unique
)

insert into Students values('Zaur','Ferruxzade','z@code.edu.az')

select * from Students where Id=1

insert into Students values('Ulvi','Mecidov','u@code.edu.az')

insert into Students values('Ulvi','Mecidov','ulvi@code.edu.az')

insert into Students (Firstname,Email) values('Orxan','o@mail.ru')

select * from Students

--insert into Students (Lastname,Email) values('Memmedli','orxan@mail.ru')

--select Firstname 'Name',Lastname 'Surname' from Students

--select Upper(Firstname) 'To Upper' from Students

--select Lower(Firstname) 'Lower' from Students

select SUBSTRING(Email,0,CHARINDEX('@',Email)) 'Email Part' from Students

--select CHARINDEX('@',Email) from Students

select SUBSTRING(Email,CHARINDEX('@',Email),LEN(Email)) from Students

select Email from Students 
where Email like '%@mail%'

alter table Students 
add Age int

select Min(Age) from Students

select * from Students where Age=(select Min(Age) from Students)

select * from Students where Id=1

select Max(Age) from Students

select AVG(Age) from Students

Select SUM(Age) from Students