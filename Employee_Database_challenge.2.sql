-- Deliverable 1
-- From query results, create a table "Retirement_titles"
SELECT e.emp_no, t.title, t.from_date, t.to_date
Into retirement_titles
FROM titles As t
Left Join employees as e 
On e.emp_no = t.emp_no
WHERE e.birth_date between '1952-01-01' AND '1955-12-31'
Order by e.emp_no;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.to_date,
rt.first_name, 
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;

-- View the results of the query
Select * From unique_titles;

-- Write a query to retrieve the number of employees by their most recent job title who are about to retire
Select count(ut.emp_no), ut.title
Into retiring_titles
From unique_titles as ut
Group By ut.title
Order By count(ut.title) desc;

-- View the results of the query
Select * From retiring_titles;

-- Deliverable 2


Select Distinct On (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
Into mentorship_eligibility
From employees as e
LEFT JOIN dept_employees as de
On (e.emp_no = de.emp_no)
LEFT JOIN titles as t
On (e.emp_no = t.emp_no)
Where e.birth_date between '1965-01-01' And '1965-12-31'
And (de.to_date = '9999-01-01')
Order by e.emp_no Asc;

-- View results of query
Select * From mentorship_eligibility;