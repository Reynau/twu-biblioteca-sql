SELECT COUNT(*)
FROM member
LEFT JOIN checkout_item ON checkout_item.member_id = member.id
WHERE checkout_item.member_id IS NULL