SELECT COUNT(*) AS TotalEmployees
FROM [Hr Data];
SELECT TOP 10 *
FROM [Hr Data];
SELECT DepartmentType, COUNT(*) AS TotalEmployees
FROM [Hr Data]
GROUP BY DepartmentType;
Select EmployeeStatus, COUNT(*) AS TotalEmployees
FROM [Hr Data]
Group By EmployeeStatus;
SELECT COUNT(*) AS TotalEmployees
FROM [Hr Data]
Where EmployeeStatus = 'Terminated for Cause'
Select FirstName , LastName
FROM [Hr Data]
Where EmployeeStatus = 'Terminated for Cause'
SELECT DepartmentType, COUNT(*) AS TotalEmployees 
FROM [Hr Data]
Where EmployeeStatus = 'Terminated for Cause'
Group By DepartmentType
ORDER BY TotalEmployees DESC;
SELECT 
(COUNT(CASE 
WHEN EmployeeStatus = 'Voluntarily Terminated' 
THEN 1 END) * 100.0 / COUNT(*)) AS AttritionRate
FROM [Hr Data];
SELECT TOP 5*
FROM [Hr Data];
SELECT DepartmentType,
AVG([Satisfaction_Score]) AS AvgSatisfaction
FROM [Hr Data]
GROUP BY DepartmentType
ORDER BY AvgSatisfaction DESC;
SELECT DepartmentType,
AVG([Work_Life_Balance_Score]) AS AvgWorkLifeBalance
FROM [Hr Data]
GROUP BY DepartmentType
ORDER BY AvgWorkLifeBalance ASC;
SELECT EmployeeStatus,
AVG([Engagement_Score]) AS AvgEngagement
FROM [Hr Data]
GROUP BY EmployeeStatus;
SELECT DepartmentType,
AVG([Current_Employee_Rating]) AS AvgRating
FROM [Hr Data]
GROUP BY DepartmentType
ORDER BY AvgRating DESC;
SELECT FirstName,
LastName,
DepartmentType,
[Engagement_Score],
[Satisfaction_Score],
[Work_Life_Balance_Score]
FROM [Hr Data]
WHERE [Engagement_Score] < 3
AND [Satisfaction_Score] < 3
AND [Work_Life_Balance_Score] < 3;