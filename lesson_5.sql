SELECT
	1 		AS numb_1
	, 2 	AS numb_2
	, 2 + 5 As numb_3;

SELECT
	COUNT(*) 			AS count_all
	, COUNT(exp_level) 	AS count_level
	, COUNT(DISTINCT exp_level)
FROM salaries
LIMIT 10;

SELECT
	AVG(salary_in_usd)	AS salary_avg
	, MIN(salary_in_usd)	AS salary_min
	, MAX(salary_in_usd)	AS salary_max
FROM salaries
WHERE year = '2023'
LIMIT 10;

SELECT
	year
	, exp_level
	, salary_in_usd
	, salary_in_usd * 39 AS salary_in_uag
	-- 'SE' - Senior
	-- 'MI' - Middle
	-- Other
	, CASE
		WHEN exp_level = 'SE'
		THEN 'Senior'
		WHEN exp_level = 'MI'
		THEN 'Middle'
		ELSE 'Other' END	AS full_level
FROM salaries
LIMIT 20;

-- homework

-- 1
SELECT
	COUNT(DISTINCT exp_level) AS dist_level
	, COUNT(DISTINCT emp_type) AS dist_type
	, COUNT(DISTINCT job_title) AS dist_title
	, COUNT(DISTINCT salary_curr) AS dist_curr
	, COUNT(DISTINCT emp_location) AS dist_emp_loc
	, COUNT(DISTINCT company_location) AS dist_comp_loc
FROM salaries;

-- 2
SELECT DISTINCT
	exp_level
	, emp_type
	, job_title
	, salary_curr
	, emp_location
	, company_location
FROM salaries;

SELECT DISTINCT exp_level FROM salaries;
SELECT DISTINCT job_title FROM salaries;

-- 3
SELECT DISTINCT year FROM salaries;

SELECT
	AVG(salary_in_usd)	AS salary_avg
	, MIN(salary_in_usd)	AS salary_min
	, MAX(salary_in_usd)	AS salary_max
FROM salaries
WHERE year = '2020';

SELECT
	AVG(salary_in_usd)	AS salary_avg
	, MIN(salary_in_usd)	AS salary_min
	, MAX(salary_in_usd)	AS salary_max
FROM salaries
WHERE year = '2021';
SELECT
	AVG(salary_in_usd)	AS salary_avg
	, MIN(salary_in_usd)	AS salary_min
	, MAX(salary_in_usd)	AS salary_max
FROM salaries
WHERE year = '2022';
SELECT
	AVG(salary_in_usd)	AS salary_avg
	, MIN(salary_in_usd)	AS salary_min
	, MAX(salary_in_usd)	AS salary_max
FROM salaries
WHERE year = '2023';

-- 4
SELECT DISTINCT exp_level  AS dist_level
FROM salaries;

SELECT AVG(salary_in_usd)	AS salary_avg_ex
FROM salaries
WHERE
	year = '2023'
	AND exp_level = 'EX';
	
SELECT AVG(salary_in_usd)	AS salary_avg_mi
FROM salaries
WHERE
	year = '2023'
	AND exp_level = 'MI';
	
SELECT AVG(salary_in_usd)	AS salary_avg_en
FROM salaries
WHERE
	year = '2023'
	AND exp_level = 'EN';
	
SELECT AVG(salary_in_usd)	AS salary_avg_se
FROM salaries
WHERE
	year = '2023'
	AND exp_level = 'SE';

-- 5
SELECT salary_in_usd * 28  AS salary_in_uag
	, job_title
FROM salaries
WHERE 
	year = '2023'
	AND job_title = 'ML Engineer'
ORDER BY salary_in_usd DESC
LIMIT 5;

-- 6
SELECT 
	DISTINCT remote_ratio * 0.01 AS remote_part
FROM salaries;

-- 7
SELECT *
	, CASE
		WHEN exp_level = 'SE'
		THEN 'Senior-level '
		WHEN exp_level = 'MI'
		THEN 'Mid-leve'
		WHEN exp_level = 'EN'
		THEN 'Entry-level'
		WHEN exp_level = 'EX'
		THEN ' Executive-level' END AS exp_level_full
FROM salaries;

-- 8
SELECT *
	, CASE
		WHEN salary_in_usd <= 20000
		THEN 'Категорія 1'
		WHEN salary_in_usd <= 50000
		THEN 'Категорія 2'
		WHEN salary_in_usd <= 100000
		THEN 'Категорія 3'
		ELSE 'Категорія 4' END AS salary_category
FROM salaries;

-- 9
SELECT
	COUNT(*) 			AS count_all
	, COUNT(year)
	, COUNT(exp_level)
	, COUNT(emp_type)
	, COUNT(job_title)
	, COUNT(salary)
	, COUNT(salary_curr)
	, COUNT(salary_in_usd)
	, COUNT(emp_location)
	, COUNT(remote_ratio)
	, COUNT(company_location)
	, COUNT(company_size)
FROM salaries;

--10
SELECT
	COUNT(*) 			AS count_all
FROM salaries
WHERE
	year = '2023'
	AND company_size = 'M'
	AND salary_in_usd > 100000;





	
