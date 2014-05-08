create table Login
(
	company nvarchar(MAX),
	password nvarchar(MAX),
	phoneNumber int,
	username nvarchar(MAX),
	personType nvarchar(MAX)
	check (personType in ('Entreprenur' , 'RealEstateAgent'))	
)

create table Entrepreneur
(
	id int identity primary key,
)

create table RealEstateAgent
(
	id int identity primary key,
)


create table House
(
	id int identity primary key,
	address nvarchar(MAX),
	basementAreal float,
	bruttoprice float,
	buildingYear int,
	cashPrice float,
	city nvarchar(MAX),
	distToSchool float,
	distToShopping float,
	energyMark nvarchar(MAX),
	floorLevels int,
	garageKvm float,
	groundAreal float,
	kvmPrice float,
	livingAreal float,
	nettoPrice float,
	rooms int,
	toilets int,
	webLink nvarchar(MAX),
	zipCode int,
	realEstateAgent int foreign key references RealEstateAgent(id)
)

create table Report
(
	id int identity primary key,
	houseId int foreign key references House(id)
)

create table K0
(
	id int identity primary key,
	problem nvarchar(MAX),
	problemPicture varBinary(MAX),
	reportId int foreign key references Report(id)
)

create table K1
(
	id int identity primary key,
	problem nvarchar(MAX),
	problemPicture varBinary(MAX),
	reportId int foreign key references Report(id)
)

create table K2
(
	id int identity primary key,
	problem nvarchar(MAX),
	problemPicture varBinary(MAX),
	reportId int foreign key references Report(id)
)

create table K3
(
	id int identity primary key,
	problem nvarchar(MAX),
	problemPicture varBinary(MAX),
	reportId int foreign key references Report(id)
)

create table Un
(
	id int identity primary key,
	problem nvarchar(MAX),
	problemPicture varBinary(MAX),
	reportId int foreign key references Report(id)
)

create table Offer
(
	id int identity primary key,
	entrepreneurId int foreign key references Entrepreneur(id),
	k0Id int foreign key references K0(id),
	k1Id int foreign key references K1(id),
	k2Id int foreign key references K2(id),
	k3Id int foreign key references K3(id),
	unId int foreign key references Un(id),
	price float
)

