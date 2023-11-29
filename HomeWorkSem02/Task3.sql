-- Используя операторы языка SQL, создайте таблицу orders, заполните ее значениями.
-- Названия столбцов: employee_id, amount, order_status.

create table if not exists itresume1833618.orders
(
orderid serial primary key,
employeeid varchar(10) not null,
amount varchar(10) not null,
order_status varchar(20)
);

insert into itresume1833618.orders(employeeid, amount, order_status) values
('e03', '15.00', 'OPEN'),
('e01', '25.50', 'OPEN'),
('e05', '100.70', 'CLOSED'),
('e02', '22.18', 'OPEN'),
('e04', '9.50', 'CANCELLED');


select *,
case WHEN order_status = 'OPEN' THEN 'Order is in open state'
	WHEN order_status = 'CLOSED' THEN 'Order is closed'
    WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
end as full_order_status
FROM itresume1833618.orders;