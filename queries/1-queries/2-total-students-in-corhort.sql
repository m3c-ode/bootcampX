SELECT
  count(id)
FROM
  students
WHERE
  -- cohort_id <= 3;
  cohort_id IN (1, 2, 3)