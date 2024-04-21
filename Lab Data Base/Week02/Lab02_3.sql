create table patientType (
	id int
);

alter table patientType
add type_name varchar(45);

alter table patientType
change column id type_id int;

alter table patientType
add primary key (type_id);

alter table patient
add tid int;

alter table patient
add foreign key (tid) references patientType(type_id);

create table disease (
	id int, 
    name varchar(45),
    level int
);

drop table disease;