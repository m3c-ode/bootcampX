SELECT
  t.name,
  s.name,
  ass.name,
  (ar.completed_at - ar.started_at) AS duration
FROM
  assistance_requests ar
  JOIN teachers t ON teacher_id = t.id
  JOIN students s ON student_id = s.id
  JOIN assignments ass ON assignment_id = ass.id
ORDER BY
  duration