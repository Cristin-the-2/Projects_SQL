-- У вас есть таблица с мобильными телефонами mobile_phones.
-- Вывести название (product_name), производителя (manufacturer) и цену (price) для товаров из базы данных, у которых количество (product_count) больше чем 2.

select product_name, manufacturer, price 
from mobile_phones
where product_count > 2;