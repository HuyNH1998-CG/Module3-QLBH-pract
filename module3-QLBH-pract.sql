create database quanlybanhang;
use quanlybanhang;
create table customer(
customerid int not null auto_increment primary key,
customername nvarchar(45),
customerage int
);
create table saleorder (
orderid int not null auto_increment primary key,
customerid int,
orderdate date,
ordertotalprice int,
foreign key (customerid) references customer(customerid)
);
create table product(
productid int not null primary key,
productname nvarchar(45),
priductprice int
);
create table orderdetail(
orderid int not null ,
productid int not null ,
orderquantity int,
foreign key (orderid) references saleorder(orderid),
foreign key (productid) references product(productid)
);
