-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT *
FROM students
JOIN degrees
ON students.degree_id = degrees.id
WHERE degrees.id = 53;

-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT *
FROM degrees
JOIN departments
ON degrees.department_id = departments.id
WHERE degrees.level = "triennale"
AND departments.name LIKE "neuroscienze%";

-- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT *
FROM course_teacher
JOIN courses
ON course_teacher.course_id = courses.id
WHERE teacher_id = 44;

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui
-- sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT students.id, students.name, surname, degrees.id, degrees.name, degrees.level, degrees.email
FROM students
JOIN degrees
ON students.degree_id = degrees.id
ORDER BY students.name;

-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT degrees.id AS degree_id,
degrees.name AS degree_name,
courses.id AS course_id,
courses.name AS course_name,
course_teacher.teacher_id,
teachers.name,
teachers.surname
FROM degrees
JOIN courses
ON courses.degree_id = degrees.id
JOIN course_teacher
ON course_teacher.course_id = courses.id
JOIN teachers
ON teachers.id = course_teacher.teacher_id
ORDER BY degrees.id;

-- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (5)
SELECT degrees.department_id,
degrees.name AS corso_laurea,
teachers.name AS nome_insegnante,
teachers.surname AS cognome_insegnante
FROM degrees
JOIN courses
ON courses.degree_id = degrees.id
JOIN course_teacher
ON course_teacher.course_id = courses.id
JOIN teachers
ON teachers.id = course_teacher.teacher_id
WHERE degrees.department_id = 5