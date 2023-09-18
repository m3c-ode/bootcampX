SELECT
  cohorts.name AS cohort,
  count(asub.*) AS total_submissions
FROM
  cohorts
  JOIN students ON cohort_id = cohorts.id
  JOIN assignment_submissions asub ON asub.student_id = students.id
GROUP BY
  cohorts.name
ORDER BY
  total_submissions DESC