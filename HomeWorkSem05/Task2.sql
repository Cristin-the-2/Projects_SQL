-- Составить список сообщений из таблицы messages, включая их уникальные идентификаторы, отправителя (from_user_id), получателя (to_user_id), текст сообщения (body), дату создания (created_at), а также информацию о времени, прошедшем между этим сообщением и следующим (lead_time и minute_lead_diff) и времени, прошедшем между этим сообщением и предыдущим (lag_time и minute_lag_diff). Время указано в минутах.

SELECT
  m.id,
  m.from_user_id,
  m.to_user_id,
  m.body,
  m.created_at,
  LEAD(m.created_at) OVER(ORDER BY m.created_at) AS 'lead_time',
  ANY_VALUE(TIMESTAMPDIFF(MINUTE, m.created_at, LEAD(m.created_at) OVER(ORDER BY m.created_at))) AS 'minute_lead_diff',
  LAG(m.created_at) OVER(ORDER BY m.created_at)AS 'lag_time',
  ANY_VALUE(TIMESTAMPDIFF(MINUTE, LAG(m.created_at) OVER(ORDER BY m.created_at), m.created_at)) AS 'minute_lag_diff'
FROM messages m