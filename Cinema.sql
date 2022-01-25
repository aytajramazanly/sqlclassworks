--create database CinemaDb

--use CinemaDb

--create table Genres(
--Id int primary key identity,
--Name nvarchar(50)
--)

--create table Movies(
--Id int primary key identity,
--Name nvarchar(50)
--)

--create table MovieGenres(
--Id int primary key identity,
--MovieId int references Movies(Id),
--GenreId int references Genres(Id),
--)

--create table Actors(
--Id int primary key identity,
--FullName nvarchar(50)
--)

--create table MovieActors(
--Id int primary key identity,
--MovieId int references Movies(Id),
--ActorId int references Actors(Id),
--)

--create table Hall(
--Id int primary key identity,
--Name nvarchar(50)
--)

--create table Sessions(
--Id int primary key identity,
--Time datetime default getdate(),
--HallId int references Hall(Id),
--MovieId int references Movies(Id)
--)

--create table Customers(
--Id int primary key identity,
--Fullname nvarchar(50),
--PhoneNumber nvarchar(50)
--)

--create table Tickets (
--Id int primary key identity,
--CustomersId int references Customers(Id),
--SessionId int references Sessions(Id)
--)

--insert into Movies values 
--('Intersteller'),
--('Harry Potter'),
--('Spiderman'),
--('Matrix'),
--('Forest Gump')

--insert into Genres values
--('Drama'),
--('Fantasy'),
--('Action'),
--('Comedy')

--insert into MovieGenres values
--(1,1),
--(2,2),
--(3,2),
--(5,4),
--(4,3)

