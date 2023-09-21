const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = process.argv[2];

pool.query(`
SELECT
  DISTINCT t.name AS teacher,
  c.name AS cohort
FROM
  teachers t
  JOIN assistance_requests ar ON teacher_id = t.id
  JOIN students s ON student_id = s.id
  JOIN cohorts c ON cohort_id = c.id
WHERE
  c.name = $1
ORDER BY
  t.name
`, [cohort])
  .then((result) => {
    result.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    });
  }).catch((err) => {
    console.log(err.message);
  });