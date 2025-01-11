SELECT 
    sender_id, 
    COUNT(message_id) AS messgae_count
FROM
    messages
WHERE
    sent_date BETWEEN '08/01/2022' AND '08/30/2022'
GROUP BY sender_id
ORDER BY messgae_count DESC
LIMIT 2;