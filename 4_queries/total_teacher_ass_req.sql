SELECT COUNT(assistance_requests) AS total_assistances, (SELECT name FROM teachers WHERE name ='Waylon Boehm') AS name
FROM assistance_requests JOIN teachers ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm';