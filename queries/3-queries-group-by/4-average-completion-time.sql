SELECT
  students.name AS student,
  avg(asub.duration) AS avg_assignment_duration
FROM
  assignment_submissions asub
  JOIN students ON asub.student_id = students.id
WHERE
  end_date IS NULL
GROUP BY
  student
ORDER BY
  avg_assignment_duration DESC