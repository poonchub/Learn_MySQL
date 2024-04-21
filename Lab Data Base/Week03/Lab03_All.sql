-- Lab03_1 
create schema sele;

create table Manufacturer (
	 mid int primary key,
     mname varchar(45),
     city varchar(45)
);

create table Product (
	pid int,
    pname varchar(45),
    price float,
    type varchar(45),
    instock int,
    mid int,
    primary key (pid, mid),
    foreign key (mid)
		references Manufacturer(mid)
);

insert into Manufacturer values 
	(1, 'Apple', 'BKK'),
    (2, 'Meji', 'Korat'),
    (3, 'Nintendo', 'BKK');

insert into Product values
	(1, 'iPhone', 50000, 'Technology', 10, 1),
    (2, 'Nintendo Switch', 10000, 'Technology', 5, 3),
    (3, 'Milk', 10, 'food', 50, 2);
    
-- Lab03_2
update Product
set pname = 'iPhone11'
where pid = 1;

update Manufacturer
set city = 'Rayong'
where mid = '2';

update Product
set instock = 0
where pid = 2;

update Product
set type = 'Drink', instock = 300
where pid = 3;

-- Lab03_3
SET SQL_SAFE_UPDATES = 0;

delete from Product
where instock = 0;

delete from Product
where instock > 30;

delete from Product
where type = 'Technology'
order by pname
limit 2;

delete from Manufacturer
where city = 'Rayong';

delete from Product