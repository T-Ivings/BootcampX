SELECT teachers.name, (SELECT name from cohorts WHERE name = 'JUL02'), count(teachers.name) as total_assists
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name
ORDER BY teachers.name