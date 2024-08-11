SELECT id, date, YEAR(date) AS year, MONTH(date) AS month, DAY(date) AS day FROM orders;

SELECT id, date, date + INTERVAL 1 DAY AS date_tomorrow FROM orders;

SELECT id, date, TIMESTAMPDIFF(SECOND, date, NOW()) AS seconds_from_start FROM orders;

SELECT COUNT(*) AS rows_with_date_between FROM orders WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

SELECT id, date, JSON_OBJECT('id', id, 'date', date)
FROM orders;