# Pewlett-Hackard-Analysis



# Employee Database Challenge
## Overview of Project
Pewlett Hackard is a large company with several thousand employees. Looking toward the future in two ways. First, it is offering retirement packages to 
employees who meet certain criteria and starting to think about which positions will need to be filled soon. The number of retirements in the near term is 
expected to leave thousands of job openings.
Research sought to answer the following questions: who will be retiring in the next few years 
and how many positions will the company need to fill? This analysis will help the company prepare by generating a list of all employees eligible for the 
retirement package. The employee data that we needed was only available in the form of six CSV files because the company has been mainly using Excel and VBA 
to work with their data. But now the company finally decided to update its methods and instead use SQL. 



## Results: 
Developed a series of tables and related csv files using SQL scripts. The scripts can be found in the “Employee_Database_Challenge.sql” file. The below image 
provides a sample of the code.
https://github.com/Bernest1108/Pewlett-Hackard-Analysis/blob/main/Employee_Database_challenge.2.sql



*	Current_emp table and csv file provide data that modified the retirement_info table that not only meet the criteria for retirement eligibility, i.e. born 
between 1952 and 1955 and hired between 1985 and 1988, but also restricts to just current employees.  I also added the employee number and the to_date that 
confirms each as an active employee. This query produced a list of 33,118 current employees that meet the criteria for retirement eligibility. This reduced the 
count of employees that meet the retirement eligibility from the initial count of 41,380 in the retirement_info table down to 33,118.


*	Retirement_titles table and csv file provide data of those employees who meet the two criteria for retirement eligibility, and lists each employee’s 
	respective titles, both current and prior titles in the company. The list does contain both current and non-current employees.
	
*	Unique_titles table and csv provide data that modified the retirement_titles query to restrict to only current employees and provide their current titles. 
 

*	Retiring_titles table and csv provide summary data of the count of current employees who are retirement eligible, grouped by title. 


*	Mentorship_eligibility table and csv provide data of current employees who are eligible for the mentorship program, i.e. the employee was born in 1965. 
	This provides a list of 1,549 mentorship eligible current employees. 
  

## Summary
Here is a summary of my findings and recommendations to assist the company in preparing for this large scale of employee retirements:

*	Based on the current-emp table, 33,118 current employees are retirement eligible and likely need to be filled. 

*	The mentorship eligible employees were limited to only 1,549 employees, despite a much larger group of likely qualified, retirement-ready employees in the 
	departments to mentor the next generation of Pewlett Hackard employees.
*	The employee_countby_dept query suggests that there are only a total of 36,619 total current employees, so retirement eligible employees represent the vast 
	majority, 90% of the total employees.

