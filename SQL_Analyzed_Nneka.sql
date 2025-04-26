USE Heart_Disease_Data;

SELECT * FROM Cleaned_Heart_Disease_Analysis

--Q1. How Many People Have Heart Disease?
SELECT Target,
    COUNT(*) AS Patient_Count
FROM Cleaned_Heart_Disease_Analysis
GROUP BY Target;

--Q2. Write a query that retrieves the number of patients with more chance of HA for each age.
SELECT age, COUNT(*) AS Numofpatients
FROM Cleaned_Heart_Disease_Analysis
WHERE target = 'More chance of heart attack'

GROUP BY age
ORDER BY age;

--Q3. What is the most common type of chest pain (cp) among patients with more chance of heart attack?

SELECT TOP 1 cp, COUNT(*) AS most_common_cp
FROM Cleaned_Heart_Disease_Analysis
WHERE target = 'More chance of heart attack'

GROUP BY cp 
ORDER BY most_common_cp DESC;

--Q4. What is the distribution of resting electrocardiographic results (restecg) among patients with more chance of heart attack?

SELECT restecg, COUNT(*) AS heart_attack
FROM Cleaned_Heart_Disease_Analysis
WHERE target = 'More chance of heart attack'

GROUP BY restecg;


