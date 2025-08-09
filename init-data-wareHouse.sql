-- create the  dataWareHouse
use master; 
create database DataWareHouse; 

--create  the  Schema
use DataWareHouse;
create schema bronze; 
go
create schema silver; 
go
create schema gold; 
go
