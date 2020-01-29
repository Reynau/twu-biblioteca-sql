SELECT member.name
FROM member
INNER JOIN checkout_item ON checkout_item.member_id = member.id
GROUP BY member.id
HAVING COUNT(*) > 1