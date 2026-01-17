--create database CSDL_session06_04
create database CSDL_session06_04;
--create table customer
create table customer(
    customer_id serial primary key,
	name varchar(100),
	email varchar(100),
	phone varchar(20),
	points int
);
--create table orderinfo
create table orderinfo(
    id serial primary key,
	customer_id int,
	order_date date,
	total numeric(10, 2),
	status varchar(20)
);

--Thêm 5 đơn hàng mẫu với tổng tiền khác nhau
insert into orderinfo (customer_id, order_date, total, status) values
(1, '2024-10-05', 1500000.00, 'Completed'),
(2, '2024-01-10', 3200000.50, 'Pending'),
(3, '2024-02-01', 780000.00, 'Completed'),
(1, '2024-10-15', 4500000.75, 'Cancelled'),
(4, '2024-03-03', 2200000.00, 'Completed');

--Truy vấn các đơn hàng có tổng tiền lớn hơn 500,000
select * from orderinfo where total > 500000;
--Truy vấn các đơn hàng có ngày đặt trong tháng 10 năm 2024
select * from orderinfo where order_date between '2024-10-01' and '2024-10-31';
--Liệt kê các đơn hàng có trạng thái khác “Completed”
select * from orderinfo where status <> 'Completed';
--Lấy 2 đơn hàng mới nhất
select * from orderinfo order by order_date desc limit 2;

