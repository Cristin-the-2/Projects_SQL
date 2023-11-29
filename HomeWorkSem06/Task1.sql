-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. 
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

DROP PROCEDURE IF EXISTS print_sec;
DELIMITER //
CREATE PROCEDURE print_sec
(
	IN input_sec INT
)
BEGIN
	DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE seconds INT;
    SET seconds = input_sec;

	SET	days = seconds / (24 * 60 * 60);
	SET seconds = seconds % (24 * 60 * 60);
	SET hours = seconds / (60 * 60);
	SET seconds = seconds % (60 * 60);
	SET minutes = seconds / 60;
	SET seconds = seconds % 60;
	SELECT days, hours, minutes, seconds;
END //

CALL print_sec(1);