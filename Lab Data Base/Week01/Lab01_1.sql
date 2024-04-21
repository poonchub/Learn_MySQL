-- CREATE USER 
create user 'username'@'localhost' identified by 'password';

-- GRANT 
grant all privileges on *.* to 'username'@'localhost' with grant option;

-- CHECK USER 
select host, user from mysql.user;

-- DROP USER 
drop user 'username'@'localhost';