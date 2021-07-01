use master
go
---
create database ECommDb
go
--
use ECommDb
go
---
create table Categories
(
	Id int primary key identity(1,1),
	CategoryName varchar(25),
	CategoryDesc varchar(200) null
)

Print 'Categories table created'
---
create table Products
(
	Id int primary key identity(1,1),
	ProductName varchar(25),
	ProductDesc varchar(200) null,
	Price money,
	CategoryId int foreign key references Categories(Id) null
)

Print 'Products table created'
------
insert into Categories
select 'Drinks', 'Drinks'
union
select 'Beverages', 'Beverages'
union
select 'Bathroom Supplies', 'Bathroom Supplies'
union
select 'Vegetables', 'Vegetables'
----

Print 'Categories data created'
insert Products
select 'Nescafe', 'Nescafe Coffee', 3.25, 2
union
select 'Citi Tea', 'Citi Tea Tea', 2.25, 2
union
select 'Kinley Water', 'Mineral Water', 1, 1
union
select 'Toms Toilet Paper', 'Toilet Paper', 3, 3
union
select 'Golden Potatos', 'Potatos', 1, 4
union
select 'City Magzine', 'City Magzine', 3, null
--
Print 'Products data created'
---
-- CLOSE THE RESULT WINDOW 'Ctrl + R'

select * from Categories
select * from Products

