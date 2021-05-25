SELECT
    first_name,
    last_name AS family_name,
    faculty
FROM 
    students
    JOIN groups ON students.group_id = groups.id 
    JOIN faculties ON groups.faculty_id = faculties.id   
WHERE
    faculty_id = 1;