/*
Q2. DAU who Offered at least 1 Flower %
*/
SELECT 
    DATE(ue.timestamp) AS Date,
    COUNT(ue.device_id) / COUNT(*) * 100 AS 'DAU flower offered %'
FROM user_engagement ue
LEFT JOIN flower_offered fo
ON ue.device_id = fo.device_id
GROUP BY Date;
