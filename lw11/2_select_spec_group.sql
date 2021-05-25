SELECT
    first_name,
    last_name AS family_name,
    age AS Age,
    `group`
FROM 
    students
    JOIN groups ON students.group_id = groups.id
WHERE
    group_id = 7;