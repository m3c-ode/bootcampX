const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = process.argv[2];
const limit = process.argv[3];

pool.query(`
SELECT s.id, s.name, c.name as cohort
FROM students s
JOIN cohorts c ON c.id = s.cohort_id
WHERE c.name LIKE $1
LIMIT $2;
`, [cohort + '%', limit])
  .then(res => {
    console.log('result', res.rows);
    res.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
    });

  }).catch(err => console.error('query error', err.stack));
