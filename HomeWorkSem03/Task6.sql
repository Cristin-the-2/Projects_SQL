-- Определить количество уникальных специальностей (должностей) среди сотрудников в таблице 'staff'.

SELECT count(DISTINCT post) as 'Количество специальностей'
FROM staff;