SELECT
  name,
  count(ar.*) AS total_assistance
FROM
  students
  JOIN assistance_requests ar ON student_id = students.id
WHERE
  name = 'Elliot Dickinson'
GROUP BY
  name