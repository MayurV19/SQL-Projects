/*
Q3. DAU who Claimed at least 1 Flower %
*/
SELECT 
    DATE(ue.timestamp) AS Date,
    COUNT(ue.device_id) / COUNT(*) * 100 AS 'DAU mandir home %'
FROM user_engagement ue
LEFT JOIN flower_claimed fc
ON ue.device_id = fc.device_id
WHERE ue.login_status=1
GROUP BY Date;
