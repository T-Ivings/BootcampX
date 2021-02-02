SELECT day, count(duration), SUM(duration)
FROM assignments
GROUP BY day
ORDER BY day