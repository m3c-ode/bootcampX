SELECT
  DISTINCT t.name AS teacher,
  c.name AS cohort
FROM
  teachers t
  JOIN assistance_requests ar ON teacher_id = t.id
  JOIN students s ON student_id = s.id
  JOIN cohorts c ON cohort_id = c.id
WHERE
  c.name = 'JUL02'
ORDER BY
  t.name