--Question 1) 1793 rows
SELECT *
FROM data_analyst_jobs;

--Question 2) ExxonMobil
SELECT *
FROM data_analyst_jobs
LIMIT 10;

--Question 3) 21 postings
SELECT COUNT(company)
FROM data_analyst_jobs
WHERE location = 'TN';

--Question 3) 27 postings
SELECT COUNT(company)
FROM data_analyst_jobs
WHERE location = 'TN' OR location ='KY';

--Question 4) 3 postings
SELECT COUNT (company)
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating >4;

--Question 5) 151 postings 
SELECT COUNT(review_count)
FROM data_analyst_jobs
WHERE review_count  BETWEEN 500 AND 1000;

--Question 6) NE 
SELECT AVG(star_rating)AS avg_rating, location AS state
FROM data_analyst_jobs
WHERE star_rating IS NOT null
GROUP BY location
ORDER BY avg_rating DESC;

--Question 7) 881 unique job titles
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;

--Question 8) 230 unique job titles in CA
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';

--Question 9) 40 companies
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE star_rating IS NOT null 
	AND review_count >5000
	AND company IS NOT null
GROUP BY company
ORDER BY company;

--Question 10) American Express 4.1999998090000000
SELECT company, AVG(star_rating) 
FROM data_analyst_jobs
WHERE star_rating IS NOT null 
	AND review_count >5000
	AND company IS NOT null
GROUP BY company, star_rating 
ORDER BY star_rating DESC;

--Question 11) 774 job titles
SELECT COUNT(DISTINCT title) AS analyst_job_title
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';

--Question 12) 4 job titles ; Tableau
SELECT DISTINCT title AS other_job_titles
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' 
	AND title NOT ILIKE '%Analytics%'
ORDER BY title;

--**BONUS**-- 
--Internet and Software = 62 jobs
--Banks and Financial Services = 61
--Consulting and Buisness Services = 57 jobs
--Healthcare = 52 jobs




