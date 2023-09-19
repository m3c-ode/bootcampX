SELECT
  name,
  count(ar.*)
FROM
  teachers
  JOIN assistance_requests ar ON teacher_id = teachers.id
WHERE
  name = 'Waylon Boehm'
GROUP BY
  name