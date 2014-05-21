create table Login
(
	id int identity primary key,
	company nvarchar(MAX),
	password nvarchar(MAX),
	phoneNumber int,
	username nvarchar(MAX),
	personType nvarchar(MAX)
	check (personType in ('Entreprenur' , 'RealEstateAgent'))	
)

create table House
(
	id int identity primary key,
	[address] nvarchar(MAX),
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
	loginId int foreign key references [Login](id)
)
create table Picture
(
	id int identity primary key,
	pictureFilename nvarchar(MAX),
	houseId int foreign key references House(id) null,
	classificationId int foreign key references Classification(id) null,
	CHECK (houseId IS not null OR classificationId IS not null)
)
create table Report
(
	id int identity primary key,
	houseId int foreign key references House(id)
)


create table Classification
(
	id int identity primary key,
	problem nvarchar(MAX),
	[type] nvarchar(MAX),
	reportId int foreign key references Report(id)

	check ([type] in ('k3' , 'k2', 'k1', 'k0', 'un')),
)

create table Offer
(
	id int identity primary key,
	loginId int foreign key references [Login](id),
	classificationId int foreign key references Classification(id),
	comment nvarchar(MAX),
	price float
)

