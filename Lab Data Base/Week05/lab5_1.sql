select employee.FIRST_NAME, employee.LAST_NAME, department.NAME
from lab_week6.customer inner join lab_week6.department
on employee.DEPT_ID = department.DEPT_ID;
