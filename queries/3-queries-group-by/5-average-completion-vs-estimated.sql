SELECT
  students.name AS student,
  avg(asub.duration) AS avg_assignment_duration,
  avg(assignments.duration) AS avg_estimated_duration
FROM
  students
  JOIN assignment_submissions asub ON asub.student_id = students.id
  JOIN assignments ON asub.assignment_id = assignments.id
WHERE
  end_date IS NULL
GROUP BY
  student
HAVING
  avg(asub.duration) < avg(assignments.duration)
ORDER BY
  avg_assignment_duration