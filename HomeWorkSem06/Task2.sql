-- Выведите только четные числа от 1 до 10.
-- Пример: 2,4,6,8,10

DROP PROCEDURE IF EXISTS numbers;
DELIMITER //
CREATE PROCEDURE numbers
(
	IN number INT
)
BEGIN
DECLARE n INT;
DECLARE result VARCHAR(100) DEFAULT "";
SET n = 2;

REPEAT
	SET result = CONCAT( result, n, ", ");
    SET n = n + 2;
    UNTIL n >= number 
END REPEAT;
SELECT result;

END //
CALL numbers(10);