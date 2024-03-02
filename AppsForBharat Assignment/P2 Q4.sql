/*
Q4. Measure amount of hours spent by each employee inside the office between
	“2021-04-01 14:00:00” and “2021-04-02 10:00:00”
*/
/*
Same steps as in Problem 2 Question 3.
Just introduce the time period constraints specified while ranking as shown below.
*/
WITH Emp_In AS (
SELECT
	"Employee id" AS Emp_id,
	Created AS in_time,
	ROW_NUMBER() OVER (PARTITION BY Emp_id ORDER BY Created) AS in_number
FROM giventable
WHERE Action = "In" AND Created BETWEEN "2021-04-01 14:00:00" AND "2021-04-02 10:00:00"
), Emp_out AS (
SELECT
	"Employee id" AS Emp_id,
	Created AS out_time,
	ROW_NUMBER() OVER (PARTITION BY Emp_id ORDER BY Created) AS out_number
FROM giventable
WHERE Action = "Out" 
AND (Created BETWEEN (SELECT MIN(in_time) FROM Emp_In) AND "2021-04-02 10:00:00")
)
SELECT i.Emp_id, SUM(TIMESTAMPDIFF(HOUR, i.in_time, COALESCE(o.out_time, NOW())))
FROM Emp_In i
LEFT JOIN Emp_out o
ON i.Emp_id = o.Emp_id AND i.in_number = o.out_number
GROUP BY i.Emp_id;