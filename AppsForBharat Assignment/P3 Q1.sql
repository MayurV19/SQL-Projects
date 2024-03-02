/*
Q1. DAU who clicked on Flower Icon on Mandir Home %
*/
/*
Considering that all events are recorded in user_engagement table, a simple join and 
count can be used to perform the task.
*/
SELECT 
    DATE(ue.timestamp) AS Date,
    COUNT(ue.device_id) / COUNT(*) * 100 AS 'DAU mandir home %'
FROM user_engagement ue
LEFT JOIN event_table et
ON ue.device_id = et.device_id
WHERE et.events = 'mandir_home'
GROUP BY Date;
