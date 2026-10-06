 CREATE OR REPLACE FUNCTION count_students
(p_dept_id IN NUMBER)
RETURN NUMBER
IS
    total_students NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO total_students
    FROM Student
    WHERE DepartmentID = p_dept_id;

    RETURN total_students;
END;
/
BEGIN
    insert_student(1005, 'Ravi', 101);
END;
/
