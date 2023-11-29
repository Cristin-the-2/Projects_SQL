-- Выведите весь ассортимент товаров марки Samsung из таблицы mobile_phones, и вывести поля id, product_name, manufacturer, product_count и price для этих записей.

select  id, product_name, manufacturer, product_count, price
from mobile_phones
where manufacturer = 'Samsung';