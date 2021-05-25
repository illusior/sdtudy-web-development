SELECT
    first_name,
    last_name AS family_name,
    age,
    `group`,
    faculty
FROM
    students
    JOIN groups ON students.group_id = groups.id
    JOIN faculties ON groups.faculty_id = faculties.id
WHERE
    students.id = 40;