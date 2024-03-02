/*
Q3. Measure amount of hours spent by each employee inside the office since the
day they started (Account for current shift if she/he is working)
*/
/*
The task can be accomplishment by creating CTEs (Common Table Expressions) in specific way.
Step 1: Create 2 CTEs, rank the "in time" (Created column with Action "In")
		and "out time" (Created column with Action "Out") for each employee as shown below.
Step 2: Join the 2 CTEs based on the Employee id and Ranks (aliases are used below)
Step 3: Compute the total difference between the "in time" and "out time" of each Employee
		as shown below using TIMESTAMPDIFF() function.
*/
WITH Emp_In AS (
SELECT
	"Employee id" AS Emp_id,
	Created AS in_time,
	ROW_NUMBER() OVER (PARTITION BY Emp_id ORDER BY Created) AS in_number
FROM giventable
WHERE Action = "In"
), Emp_out AS (
SELECT
	"Employee id" AS Emp_id,
	Created AS out_time,
	ROW_NUMBER() OVER (PARTITION BY Emp_id ORDER BY Created) AS out_number
FROM giventable
WHERE Action = "Out"
)
SELECT i.Emp_id, SUM(TIMESTAMPDIFF(HOUR, i.in_time, COALESCE(o.out_time, NOW())))
FROM Emp_In i
LEFT JOIN Emp_out o
ON i.Emp_id = o.Emp_id AND i.in_number = o.out_number
GROUP BY i.Emp_id;