select employee.FIRST_NAME, employee.LAST_NAME, department.NAME
from lab_week6.employee inner join lab_week6.department
on employee.DEPT_ID = department.DEPT_ID and department.NAME = 'Operations';

select officer.FIRST_NAME, individual.FIRST_NAME
from lab_week6.officer inner join lab_week6.individual inner join lab_week6.customer
on customer.CUST_ID = officer.CUST_ID and officer.CUST_ID = individual.CUST_ID;

SELECT 
    e1.EMP_ID,
    e1.FIRST_NAME,
    e1.LAST_NAME,
    e2.FIRST_NAME,
    e2.LAST_NAME
FROM employee e1 LEFT JOIN employee e2
ON e1.SUPERIOR_EMP_ID = e2.EMP_ID
LIMIT 5;