create table MyDimDate(
	dateid int not null,
	date date,
	Year int,
	Quarter int,
	QuarterName varchar(2),
	Month int,
	Monthname varchar(15),
	Day int ,
	Weekday	int,
	WeekdayName varchar(15),
	primary key (dateid)
	
);