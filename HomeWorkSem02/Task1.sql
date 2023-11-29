-- Создать таблицу sales с тремя столбцами: id, order_date (дата заказа) и count_product (количество продуктов в заказе). Затем заполнить эту таблицу данными, включая информацию о дате заказа и количестве продуктов в каждом заказе.
-- Названия столбцов: order_date, count_product. Заполните ее данными. 

create table itresume1833618.sales
(
id serial primary key,
order_date date not null,
count_product int not null
);

insert into itresume1833618.sales(order_date, count_product) values
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);