-- Выбрать пользователей из таблицы users, которые не отправили ни одного сообщения (не имеют записей в таблице 'messages').

SELECT id, CONCAT(firstname, ' ', lastname) AS user
FROM users u
WHERE u.id NOT IN (SELECT from_user_id FROM messages)