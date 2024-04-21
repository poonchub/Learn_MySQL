create schema cinema;

create table Schedule (
	ScheduleID int auto_increment primary key,
    ScheduleDateTime datetime,
    TheaterNumber int
);

create table OnAir_Movie (
	MovieID int,
    MovieName varchar(45),
    MovieGenre varchar(45),
    MovieDuration time,
    ScheduleID int,
    primary key (MovieID, ScheduleID),
    foreign key (ScheduleID)
		references Schedule(ScheduleID)
);

create table Theater (
	TheaterNumber int,
    Capacity int,
    ScheduleID int,
    primary key (TheaterNumber, ScheduleID),
    foreign key (ScheduleID)
		references Schedule(ScheduleID)
);

create table Ticket (
	TicketID varchar(45),
    SeatNo varchar(10),
    Price float,
    ScheduleID int,
    primary key (TicketID, ScheduleID),
    foreign key (ScheduleID)
		references Schedule(ScheduleID)
);