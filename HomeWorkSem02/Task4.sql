-- Выбрать данные из таблицыorders и вывести столбцы id, employee_id, amount, и order_status с дополнительным столбцом full_order_status, который содержит описание статуса заказа на основе значения столбца 'order_status'.
--     OPEN – «Order is in open state» ;
--     CLOSED - «Order is closed»;
--     CANCELLED - «Order is cancelled» *в остальных случаях выведите «Not mentioned»

select id, employee_id, amount, order_status,
case WHEN order_status = 'OPEN' THEN 'Order is in open state'
	WHEN order_status = 'CLOSED' THEN 'Order is closed'
    WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
end as full_order_status
FROM orders;