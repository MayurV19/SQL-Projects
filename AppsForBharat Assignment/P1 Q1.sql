/*
Q1. We need SQL query to identify weekly Retention for Users from 
their first created order Week in the following format.
(Kindly mention if any assumptions are made)
*/
/*
To accomplish the task, I make use of CTEs to calculate and compute the week each user
account was created, then generate the startdate of creation week,
then create the active week depending on when a given user placed order.
Step 1: Create CTE With info on which date and week user accounts when created.
Step 2: Calculate the Start date of Account creation week.
Step 3: Compute Active Week based on whenever the user places an order. The active week
should be calculated based on user account creation week and order placing week.
Step 4: Groupby the StartDate of CreationWeek and utilize CASE statements to compute
orders placed in 'week 0, 'week 1', etc., as shown below.
*/
WITH firstcreated AS (
SELECT 
		userid,
        MIN(created) AS CreatedDate,
        WEEK(MIN(created)) AS CreatedWeek
FROM q1
GROUP BY userid
), user_week_orders AS (
SELECT 
		q1.userid AS UserId,
        fc.CreatedDate,
        -- Create the Start of the week. Formula considers Monday as start of week
        CAST(DATE_ADD(fc.CreatedDate, INTERVAL(-WEEKDAY(fc.CreatedDate)) DAY) AS DATE)
			AS CreatedDateWeekStart,
        WEEK(q1.created) AS OrderWeek, 
        fc.CreatedWeek AS CreatedWeek, 
        (WEEK(q1.created) - fc.CreatedWeek) AS ActiveWeek
FROM q1
INNER JOIN firstcreated fc
USING(userid)
)
-- SELECT * FROM user_week_orders;
SELECT
		CreatedDateWeekStart AS 'Week Start Date',
        SUM(CASE WHEN ActiveWeek = 0 THEN 1 ELSE 0 END) AS 'Week 0',
        SUM(CASE WHEN ActiveWeek = 1 THEN 1 ELSE 0 END) AS 'Week 1',
        SUM(CASE WHEN ActiveWeek = 2 THEN 1 ELSE 0 END) AS 'Week 2',
        SUM(CASE WHEN ActiveWeek = 3 THEN 1 ELSE 0 END) AS 'Week 3',
        SUM(CASE WHEN ActiveWeek = 4 THEN 1 ELSE 0 END) AS 'Week 4',
        SUM(CASE WHEN ActiveWeek = 5 THEN 1 ELSE 0 END) AS 'Week 5',
        SUM(CASE WHEN ActiveWeek = 6 THEN 1 ELSE 0 END) AS 'Week 6',
        SUM(CASE WHEN ActiveWeek = 7 THEN 1 ELSE 0 END) AS 'Week 7',
        SUM(CASE WHEN ActiveWeek = 8 THEN 1 ELSE 0 END) AS 'Week 8',
        SUM(CASE WHEN ActiveWeek = 9 THEN 1 ELSE 0 END) AS 'Week 9',
        SUM(CASE WHEN ActiveWeek = 10 THEN 1 ELSE 0 END) AS 'Week 10'
FROM user_week_orders
GROUP BY CreatedDateWeekStart;