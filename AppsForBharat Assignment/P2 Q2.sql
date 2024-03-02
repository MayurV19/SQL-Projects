/*
Q2. Find number of employees inside the Office at “2021-05-01 19:05:00”
*/
/*
To accomplish the task, find the count of logins and logouts in the till datetime range
and calculate their difference. 
*/
SELECT
		(SELECT COUNT(*) FROM giventable WHERE Action = "In" 
        AND Created <= "2021-05-01 19:05:00")
        -
        (SELECT COUNT(*) FROM giventable WHERE Action = "Out"
        AND Created <= "2021-05-01 19:05:00")