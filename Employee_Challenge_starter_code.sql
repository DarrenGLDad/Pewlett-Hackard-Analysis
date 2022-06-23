-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;

--Deliverable 1: The Number of Retiring Employees by Title
SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date,
    ti.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN title AS ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (ri.emp_no) ri.emp_no, ri.first_name, ri.last_name, 
    ri.title
INTO unique_titles
FROM retirement_titles as ri
WHERE to_date = ('9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

SELECT * FROM unique_titles

SELECT COUNT(u.emp_no), u.title
INTO retiring_titles
FROM unique_titles as u
GROUP BY u.title
ORDER BY COUNT(u.emp_no) DESC;
--SELECT COUNT(emp_no), title
--INTO retiring_titles
--FROM unique_titles
--GROUP BY title
--ORDER BY count DESC;

--Deliverable 2: The Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, 
    e.birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibilty
FROM employees AS e
 LEFT JOIN title AS ti
  ON e.emp_no = ti.emp_no
 LEFT JOIN dept_emp AS de
  ON e.emp_no = de.emp_no
WHERE ti.to_date = ('9999-01-01')
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

-- ReFactor this code annually or an arbitrary interval, 
-- so PH is abreast of their potential mentors per dept. until “silver tsunami” is through
--SELECT COUNT(emp_no), title
--INTO mentorship_titles
--FROM mentorship_eligibilty
--GROUP BY title
--ORDER BY count DESC;

--Utilize this code to better prepare for the tail-end of the “silver tsunami”; 
--there's only a minor adjustment to the birthdate, roughly a 5 year extension.  
--Depending on the success of the pilot program this could be very affective.
-- SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, 
--     e.birth_date, de.from_date, de.to_date, ti.title
-- INTO mentorship_eligibilty
-- FROM employees AS e
--  LEFT JOIN title AS ti
--   ON e.emp_no = ti.emp_no
--  LEFT JOIN dept_emp AS de
--   ON e.emp_no = de.emp_no
-- WHERE ti.to_date = ('9999-01-01')
-- AND (birth_date BETWEEN '1965-01-01' AND '1970-12-31')
-- ORDER BY emp_no;