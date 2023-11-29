-- Подсчитать количество лайков, оставленных пользователями, в зависимости от их гендера. 
-- Для этого объединить таблицы likes и profiles, сгруппировать данные по полу пользователей и вывести результат в убывающем порядке, начиная с наибольшего количества лайков.

SELECT COUNT(*), p.gender
FROM likes l
JOIN profiles p
ON l.user_id = p.user_id
GROUP BY p.gender
ORDER BY COUNT(*) DESC