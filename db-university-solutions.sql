-- Selezionare tutti gli studenti nati nel 1990 (160)
SELECT count(*)
FROM db_university.students
WHERE YEAR(date_of_birth) = 1990;

-- Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT count(*)
FROM db_university.courses
WHERE cfu > 10;

-- Selezionare tutti gli studenti che hanno più di 30 anni
SELECT id, name, surname, date_of_birth,
TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age
FROM db_university.students
HAVING age > 30;

-- Selezionare tutti i corsi del primo semestre 
-- del primo anno di un qualsiasi corso di laurea (286)
SELECT count(*)
FROM db_university.courses
WHERE year = '1' AND period = 'I semestre';

-- Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio 
-- (dopo le 14) del 20/06/2020 (21) 
SELECT count(*)
FROM db_university.exams
WHERE hour > '14:00:00' AND date = '2020-06-20';

-- Selezionare tutti i corsi di laurea magistrale (38)
SELECT count(*)
FROM db_university.degrees
WHERE level = 'magistrale';

-- Da quanti dipartimenti è composta l'università? (12)
SELECT count(*)
FROM db_university.departments;

-- Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT count(*)
FROM db_university.teachers
WHERE phone IS NULL;