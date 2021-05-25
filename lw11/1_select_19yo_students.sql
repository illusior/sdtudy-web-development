SELECT
    first_name,
    last_name AS family_name,
    age,
    group_id
FROM
    students
WHERE
    age = 19;