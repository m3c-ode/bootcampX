SELECT
  sum(duration) AS total_duration
FROM
  assignment_submissions asub
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = students.cohort_id
WHERE
  cohorts.name = 'FEB12';

--GROUP BY cohorts.name