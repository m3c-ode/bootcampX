SELECT
  ass.id,
  DAY,
  chapter,
  ass.name,
  count(ar.*) AS total_requests
FROM
  assignments ass
  JOIN assistance_requests ar ON assignment_id = ass.id
GROUP BY
  ass.id
ORDER BY
  total_requests DESC