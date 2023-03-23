create database BusManagement
use BusManagement

create table Customer(
Ticket_No int primary key,
Name nvarchar(50),
Phone_number char(10),
Bus_No int,
Route_No int,
Ticket_price int
constraint fk1_Cus foreign key(Bus_No) references Bus_info(Bus_No),
constraint fk2_Cus foreign key(Route_No) references Routes(Route_no),
)

select * from Customer

create table Bus_info(
Bus_No int primary key,
Route_No int,
Driver_id varchar,
Start_time time,
End_time time,
Seat_count int
constraint fk1_sr_Routes foreign key(Route_No) references Routes(Route_No),
constraint fk2_sr_Routes foreign key(Driver_id) references Driver(ID)
)

insert into Bus_info values
(1, 1, 'DTHT123', '123123123', '8:30:00', '22:00:00', '20'),
(2, 2, 'VTL456', '456456456', '7:00:00', '22:00:00', '25'),
(3, 3, 'NHGK789', '789789789', '7:30:00', '22:00:00', '30')

select * from Bus_info

create table Routes (
Route_No int primary key,
Journey_from nvarchar(50),
Destination nvarchar(50),
Distance float
)

insert into Routes values
(1, N'Bến xe Trung tâm Đà Nẵng', N'Bến xe Hội An', '30'),
(2, N'Kim Liên', N'Chợ Hàn', '17'),
(3, N'Bến xe Trung tâm Đà Nẵng', N'Bến xe Ái Nghĩa', '25'),
(4, N'Bến xe Trung tâm Đà Nẵng', N'Bến xe Quảng Nam', '50')

select * from Routes

create table Driver(
ID varchar(15) primary key,
Name nvarchar(30),
Phone varchar(10),
Img ntext
)

insert into Driver values
('DTHT123', N'Đinh Trọng Hải Triều', '0123123123', 'DTHT123.png'),
('VTL456', N'Võ Thành Long', '0456456456', 'VTL456.png'),
('NHGK789', N'Ngô Hồ Gia Kiệt', '0789789789', 'NHGK789.png')

select * from Driver