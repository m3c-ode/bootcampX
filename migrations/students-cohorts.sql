CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  start_date DATE,
  end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  cohort_id INTEGER REFERENCES cohorts (id) ON DELETE CASCADE,
  name VARCHAR(50),
  email VARCHAR(50),
  phone VARCHAR(50),
  github VARCHAR(50),
  start_date DATE,
  end_date DATE
)