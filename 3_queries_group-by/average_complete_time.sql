SELECT students.name as student, AVG(assignment_submissions.duration)
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS null
GROUP BY student
ORDER BY AVG(assignment_submissions.duration) DESC;
