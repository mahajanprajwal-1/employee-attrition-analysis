SELECT COUNT(*) FROM employees;
SELECT attrition, COUNT(*) FROM employees GROUP BY attrition;

SELECT * FROM employees;

----Overall Rate
SELECT
    COUNT(*) AS total_employees,
    SUM(attritionflag) AS employees_left,
    ROUND(AVG(attritionflag::NUMERIC) * 100, 1) AS attrition_pct
FROM employees;

----BY department
SELECT
  department,
  COUNT(*) AS headcount,
  SUM(attritionflag) AS left_count,
  ROUND(AVG(attritionflag::NUMERIC) * 100, 1) AS attrition_pct
FROM employees
GROUP BY department
ORDER BY attrition_pct DESC;

----By Job Role
SELECT
  jobrole,
  COUNT(*) AS headcount,
  ROUND(AVG(attritionflag::NUMERIC)* 100, 1) AS attrition_pct
FROM employees
GROUP BY jobrole
ORDER BY attrition_pct DESC;

----Overtime
SELECT
  overtime,
  COUNT(*) AS headcount,
  ROUND(AVG(attritionflag::NUMERIC)*100,1) AS attrition_pct
FROM employees
GROUP BY overtime;

----IncomeBand
SELECT
  incomeband,
  COUNT(*) AS headcount,
   ROUND(AVG(attritionflag::NUMERIC)*100,1) AS attrition_pct
FROM employees
GROUP BY incomeband
ORDER BY attrition_pct DESC;



