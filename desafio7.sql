SELECT 
    UPPER(CONCAT(E.first_name, ' ', E.last_name)) AS 'Nome completo',
    JH.start_date AS 'Data de início',
    E.salary AS 'Salário'
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE
    MONTH(JH.start_date) BETWEEN 1 AND 3
ORDER BY UPPER(CONCAT(E.first_name, ' ', E.last_name)) , JH.start_date;
