SELECT
  avg(ar.completed_at - ar.started_at) AS avg_assis_req_duration
FROM
  assistance_requests ar