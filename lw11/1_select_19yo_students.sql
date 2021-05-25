SELECT
    first_name,
    last_name AS family_name,
    age AS Age
FROM
    students
WHERE
    students.age = 20;