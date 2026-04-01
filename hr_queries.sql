-- 1. Calculating Attrition Rate by Department
SELECT 
    Department, 
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Leavers,
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS Attrition_Rate
FROM hr_data
GROUP BY Department;

-- 2. Salary Distribution by Gender and Role
SELECT 
    JobRole, 
    Gender, 
    AVG(MonthlyIncome) AS Avg_Salary,
    MAX(MonthlyIncome) AS Max_Salary
FROM hr_data
GROUP BY JobRole, Gender;
