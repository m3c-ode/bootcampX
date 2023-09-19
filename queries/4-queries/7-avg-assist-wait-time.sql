SELECT
  avg(started_at - created_at) AS avg_Wait_time
FROM
  assistance_requests