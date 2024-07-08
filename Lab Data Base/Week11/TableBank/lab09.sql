-- 9.1 ---------------------------------------------------------
create table members (
	id 			int(5) 			not null,
    userid 		varchar(50) 	not null,
    password 	varchar(50) 	not null,
    name 		varchar(100) 	null,
    tel 		varchar(20) 	null,
    age 		int 			null,
    activated 	varchar(1) 		null,
    salary 		int 			null,
    promotion 	varchar(1) 		null,
    primary key (id)
);

insert into members values 
	(1, 'Husky', '1234', 'Malee flower', '044-111222', 33, 'Y', 10000, null),
    (2, 'Bean', 'zxcvb', 'Green bean', '044-222333', 12, 'N', 20000, null),
    (3, 'Tana', '1234qaz', 'Tana Khon', '044-555888', 18, 'Y', 30000, null);
    
DELIMITER $$
create trigger before_members_insert
	before insert
	on members for each row
	begin
		if new.age >= 18 then
			set new.activated = 'Y';
		else
			set new.activated = 'N';
		end if;
	end $$
DELIMITER ;

insert into members(userid, password, name, tel, age, salary, promotion) values 
	('std1', '0987', 'May May', '044-214445', 25, 10000, null);
insert into members(userid, password, name, tel, age, salary, promotion) values 
    ('std2', '5555', 'an May', '044-334445', 10, 15000, null);

-- 9.2 ---------------------------------------------------------
DELIMITER $$
create trigger before_member_update
	before update
    on members for each row
    begin
		if new.salary > old.salary then
			set new.promotion = 'y';
		else 
			set new.promotion = 'n';
		end if;
	end $$
DELIMITER ;

UPDATE members SET salary = 20000 WHERE id = 1;
UPDATE members SET salary = 10000 WHERE id = 1;

create table membersArchives (
	id 			int(5) 			not null,
    userid 		varchar(50) 	not null,
    password 	varchar(50) 	not null,
    name 		varchar(100) 	null,
    tel 		varchar(20) 	null,
    age 		int 			null,
    activated 	varchar(1) 		null,
    salary 		int 			null,
    promotion 	varchar(1) 		null,
    primary key (id)
);

set SQL_SAFE_UPDATES = 0;
DELIMITER $$
create trigger before_members_delete
	before delete
	on members for each row
	begin
		insert into membersarchives values
			(old.id, old.userid, old.password, old.name, old.tel, old.age, old.activated, old.salary, old. promotion);
	end $$
DELIMITER ;
delete from members where id = 1;