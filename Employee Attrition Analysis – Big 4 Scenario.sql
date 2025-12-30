
--📊 SQL KPI & ATTRITION METRICS QUERIES

--Employee Attrition Analysis – Big 4 Scenario


--🔹 1. Total Employees
SELECT 
    COUNT(*) AS total_employees
FROM hr_analytics.employees;

--🔹 2. Total Attritions (Employees Who Left)
SELECT
    COUNT(*) AS total_employees
FROM hr_analytics.employees
Where Attrition = 1;


--🔹 3. Overall Attrition Rate (%)
SELECT 
    ROUND(
         100.0 * SUM(CASE WHEN attrition = 1 THEN 1 ELSE 0 END) 
        / COUNT(*), 2
    ) AS attrition_rate_percentage
FROM hr_analytics.employees;


--🔹 4. Department-Wise Attrition Count
SELECT
    department,
    COUNT(*)AS attrition_count
FROM hr_analytics.employees
WHERE attrition = 1
GROUP BY department
ORDER BY attrition_count DESC;

--🔹 5. Department-Wise Attrition Rate (%)
SELECT
    department,
    ROUND(
        100.0 * SUM(CASE WHEN attrition = 1 THEN 1 ELSE 0 END)
        / COUNT(*), 2
        ) AS attrition_rate_percentage
FROM hr_analytics.employees
GROUP BY department
ORDER BY attrition_rate_percentage DESC;

--🔹 6. Gender-Wise Attrition
SELECT
    gender,
    COUNT(*) AS attrition_count
FROM hr_analytics.employees
WHERE attrition = 1
GROUP BY gender;

--🔹 7. Attrition by Job Level
SELECT
    job_level,
    COUNT(*) AS attrition_count
FROM hr_analytics.employees
WHERE attrition = 1
GROUP BY job_level
ORDER BY attrition_count DESC;

--🔹 8. Attrition by Years at Company (Tenure Buckets)
SELECT
    CASE
        WHEN years_at_company < 2 THEN '0–2 Years'
        WHEN years_at_company BETWEEN 2 AND 5 THEN '2–5 Years'
        WHEN years_at_company BETWEEN 6 AND 10 THEN '6–10 Years'
        ELSE '10+ Years'
    END AS tenure_group,
    COUNT(*) AS attrition_count
FROM hr_analytics.employees
WHERE attrition = 1
GROUP BY
    CASE
        WHEN years_at_company < 2 THEN '0–2 Years'
        WHEN years_at_company BETWEEN 2 AND 5 THEN '2–5 Years'
        WHEN years_at_company BETWEEN 6 AND 10 THEN '6–10 Years'
        ELSE '10+ Years'
    END
ORDER BY attrition_count DESC;

--🔹 9. Average Salary of Employees Who Left vs Stayed
SELECT
    attrition,
    ROUND(AVG(monthly_salary_inr), 0) AS avg_monthly_inr
FROM hr_analytics.employees
GROUP BY attrition;

--10. Attrition by Workload (Weekly Hours)
SELECT
    CASE
        WHEN avg_weekly_hours < 40 THEN '< 40 Hours'
        WHEN avg_weekly_hours BETWEEN 40 AND 50 THEN '40-50 Hours'
        ELSE '50+ Hours'
    END AS workload_group,
    COUNT(*) AS attrition_group
FROM hr_analytics.employees
WHERE attrition = 1
GROUP BY
    CASE
         WHEN avg_weekly_hours < 40 THEN '< 40 Hours'
        WHEN avg_weekly_hours BETWEEN 40 AND 50 THEN '40-50 Hours'
        ELSE '50+ Hours'
    END;

--🔹 11. Attrition vs Performance Rating
SELECT
    performance_rating,
    COUNT(*) AS attrition_count
FROM hr_analytics.employees
WHERE attrition = 1
GROUP BY performance_rating
ORDER BY performance_rating;

--🔹 12. Promotion Impact on Attrition
SELECT
    promotion_last_2_years,
    COUNT(*) AS attrition_count
FROM hr_analytics.employees
WHERE attrition = 1
GROUP BY promotion_last_2_years;

--🔹 13. Training Hours vs Attrition
SELECT
    CASE
        WHEN training_hours_last_year < 20 THEN 'Low Training'
        WHEN training_hours_last_year BETWEEN 20 AND 40 THEN 'Medium Training'
        ELSE 'High Training'
    END AS training_group,
    COUNT(*) AS attrition_count
FROM hr_analytics.employees
WHERE attrition = 1
GROUP BY
    CASE
        WHEN training_hours_last_year < 20 THEN 'Low Training'
        WHEN training_hours_last_year BETWEEN 20 AND 40 THEN 'Medium Training'
        ELSE 'High Training'
    END;
