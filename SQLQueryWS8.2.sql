create database BookStore
use BookStore

create table BookDetail(
BookID int primary key,
BookTitle nvarchar(50),
BookPrice float,
BookQuantity int,
PublisherID int
)
go
create table Publisher(
PublisherID int primary key,
PublisherName varchar(50),
Address varchar(50)
)

alter table BookDetail
add constraint PublisherID
FOREIGN  key (PublisherID) references Publisher (PublisherID)

insert Publisher values(1, 'Nha xuat ban Lao Dong', 'Quan 1')
insert Publisher values(2, 'Nha xuat ban Minh Khai', 'Quan 2')
insert Publisher values(3, 'Nha xuat ban Thanh Nien', 'Quan 3')

insert BookDetail values(1, 'abc', 150, 200, 1)
insert BookDetail values(2, 'asp net mvc', 10, 10, 1)
insert BookDetail values(3, 'c#', 20, 20, 2)
insert BookDetail values(4, 'mvc 5.0', 55, 30, 3)