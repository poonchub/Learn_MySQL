select FIRST_NAME, LAST_NAME from officer
where  CUST_ID = (
	select CUST_ID from  individual
    where FIRST_NAME = 'James' and LAST_NAME = 'Hadley'
);

select * from account
where AVAIL_BALANCE > (
	select avg(AVAIL_BALANCE) from account
)
order by OPEN_DATE;

select EMP_ID, FIRST_NAME, TITLE, DEPT_ID from employee
where DEPT_ID = (
	select DEPT_ID from department
    where NAME = 'Operations'
);