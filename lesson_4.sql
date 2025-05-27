select * from salaries;

SELECT 
	year
	, exp_level AS level
	, emp_type AS type
	-- , job_title
FROM salaries
WHERE year != 2022
	AND exp_level = 'SE'
ORDER BY year ASC
LIMIT 20;


--top Data Science salaries in 2023
SELECT *
	-- , job_title
	-- , salary_in_usd
FROM salaries
WHERE 
	year = 2023
	AND job_title = 'Data Scientist'
ORDER BY salary_in_usd DESC
LIMIT 5;

-- homework

-- 1
SELECT *
FROM salaries
WHERE
	year = 2023
	AND job_title = 'ML Engineer'
ORDER BY salary_in_usd
LIMIT 20;

--2
SELECT company_location
FROM salaries
WHERE 
	year = 2023
	AND job_title = 'Data Scientist'
ORDER BY salary_in_usd
LIMIT 1;


	