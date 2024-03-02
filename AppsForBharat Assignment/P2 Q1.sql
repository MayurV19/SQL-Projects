/*
Q1. Find number of employees inside the Office at current time
*/
/*
To accomplish the task, find the count of logins till date and logouts till date
and calculate their difference
*/
SELECT
		(SELECT COUNT(*) FROM giventable WHERE Action = "In")
        -
        (SELECT COUNT(*) FROM giventable WHERE Action = "Out")