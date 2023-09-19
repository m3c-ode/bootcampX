SELECT
  c.name,
  avg(ar.completed_at - ar.started_at) AS avg_assistance_time
FROM
  assistance_requests ar
  JOIN students s ON student_id = s.id
  JOIN cohorts c ON cohort_id = c.id
GROUP BY
  c.name
ORDER BY
  avg_assistance_time