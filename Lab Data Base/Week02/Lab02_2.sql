create schema hospital;

create table doctor (
	doctor_id varchar(45) primary key,
    doctor_name varchar(100),
    doctor_gender varchar(10),
    word varchar(45)
);

create table Patient (
	patient_id int,
	patient_name varchar(100),
    doctor_id varchar(45),
    primary key (patient_id, doctor_id),
    foreign key (doctor_id)
		references doctor(doctor_id)
);