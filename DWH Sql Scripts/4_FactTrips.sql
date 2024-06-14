create table FactTrips(
	Tripid int not null,
	Dateid	int ,
	Stationid int , 
	Truckid	int ,
	Wastecollected float ,
	primary key(Tripid),
	FOREIGN key(Dateid) references MyDimDate(dateid),
	foreign key(Stationid) references DimStation(Stationid),
	foreign key(Truckid) references DimTruck(Truckid)
);