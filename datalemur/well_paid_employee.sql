SELECT 
    e.employee_id, e.name AS employee_name
FROM
    employee e
        INNER JOIN
    employee m ON m.employee_id = e.manager_id
WHERE
    e.salary > m.salary;