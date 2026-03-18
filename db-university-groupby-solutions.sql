-- Contare quanti iscritti ci sono stati ogni anno
SELECT count(*), YEAR(enrolment_date)
FROM db_university.students
GROUP BY YEAR(enrolment_date);

-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT count(*), teachers.office_address
office_address
FROM db_university.teachers
GROUP BY office_address;

-- Calcolare la media dei voti di ogni appello d'esame
SELECT exam_id, AVG(vote) as media_voti
FROM db_university.exam_student
GROUP BY exam_id;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT department_id, count(*)
FROM db_university.degrees
GROUP BY department_id;
