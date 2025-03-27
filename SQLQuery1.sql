
use Footwear;

create table Register(
		Fnm varchar(50),
		Lnm varchar(50),
		Dob date,
		Pass varchar(50),
		Gmail varchar(50),
		MoNo varchar(15),
		Gender varchar(10));

select * from Register;


create table Pu(
		 Chapple varchar(50),
		 Size varchar(50),
		 Quantity int,
		 Price Decimal(10,2),
		 Total Decimal(10,2));

select * from Pu;
delete from Pu where Price=250;


create table Kolapuri(
		 Chapple varchar(50),
		 Size varchar(50),
		 Quantity int,
		 Price Decimal(10,2),
		 Total Decimal(10,2));

select * from Kolapuri;
delete from Kolapuri where Price=250;


create table Sandles(
		 Chapple varchar(50),
		 Size varchar(50),
		 Quantity int,
		 Price Decimal(10,2),
		 Total Decimal(10,2));

select * from Sandles;
delete from Sandles where Price=250;


create table Lofars(
		 Chapple varchar(50),
		 Size varchar(50),
		 Quantity int,
		 Price Decimal(10,2),
		 Total Decimal(10,2));

select * from Lofars;
delete from Lofars where Price=250;


create table Shoes(
		 Chapple varchar(50),
		 Size varchar(50),
		 Quantity int,
		 Price Decimal(10,2),
		 Total Decimal(10,2));

select * from Shoes;
delete from Shoes where Price=250;


create table BillGenerate(
		Fnm varchar(50),
		Dob date,
		Gmail varchar(50),
		Gender varchar(10),
		Size varchar(50),
		Quantity int,
		Price Decimal(10,2),
		Total Decimal(10,2));

select * from BillGenerate;
