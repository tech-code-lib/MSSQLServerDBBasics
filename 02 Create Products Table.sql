use ECommDb
--
create table Products
(
	Id int primary key identity(1,1),
	ProductName varchar(25) not null,
	ProductDesc varchar(200) null,
	Price money
)

