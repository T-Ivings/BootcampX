SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students_id = student.id
JOIN cohorts ON cohorts_id = cohort.id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;