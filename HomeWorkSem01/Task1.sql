-- Создайте таблицу с мобильными телефонами mobile_phones, используя графический интерфейс. Заполните БД данными.
-- Названия столбцов: product_name, manufacturer, product_count, price.

CREATE TABLE if not exists itresume1833618.mobile_phones
(Phones_id serial PRIMARY KEY,
ProductName VARCHAR(30),
Manufacturer varchar(30),
ProductCount int,
Price int);
insert into itresume1833618.mobile_phones(ProductName, Manufacturer, ProductCount, Price) values 
('Iphone X', 'Apple', '3', '76000'),
('Iphone 8', 'Apple', '2', '51000'),
('Galaxy S9', 'Samsung', '2', '56000'),
('Galaxy S8', 'Samsung', '1', '41000'),
('P20 Pro', 'Huawei', '5', '36000');