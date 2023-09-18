SELECT
  SUM(duration) AS total_duration
FROM
  assignment_submissions asub
  JOIN students ON asub.student_id = students.id
WHERE
  students.name = 'Ibrahim Schimmel'