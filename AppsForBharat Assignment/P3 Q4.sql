/*
Q4. DAU who clicked on Locked Flowers %
*/
SELECT 
    DATE(ue.timestamp) AS Date,
    COUNT(ue.device_id) / COUNT(*) * 100 AS 'DAU locked flower click %'
FROM user_engagement ue
LEFT JOIN flower_offered fo
ON ue.device_id = fo.device_id
WHERE fo.Condition = 'Locked'
GROUP BY Date(ue.timestamp);