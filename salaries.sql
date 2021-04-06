'''https://platform.stratascratch.com/coding-question?id=10308'''

SELECT
    (SELECT MAX(salary)
    FROM db_employee emp
    JOIN db_dept dept
        ON emp.department_id = dept.id
    WHERE department = 'marketing') -
    (SELECT MAX(salary)
    FROM db_employee emp
    JOIN db_dept dept
        ON emp.department_id = dept.id
    WHERE department = 'engineering') AS difference