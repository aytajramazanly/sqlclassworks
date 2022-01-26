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
--('Forest Gump'),
--('The Machinist'),
--('The Revenant'),
--('No Strings Attached'),
--('The Prestige'),
--('Inception'),
--('Black Swan'),
--('The Butterfly Effect'),
--('The Girl On The Train')

--insert into Genres values
--('Drama'),
--('Fantasy'),
--('Action'),
--('Comedy'),
--('Psychological Thriller'),
--('Western'),
--('Thriller'),
--('Romance'),
--('Adventure'),
--('Romantic Comendy')



--insert into MovieGenres values
--(1,1),
--(2,2),
--(3,2),
--(5,4),
--(4,3),
--(1,9),
--(3,3),
--(3,9),
--(6,5),
--(6,1),
--(7,6),
--(7,9),
--(8,8),
--(9,7),
--(10,3),
--(10,7),
--(11,5),
--(12,1),
--(12,7),
--(13,7),
--(13,5)

--insert into Actors values 
--('Christian Bale'),
--('Matthew McConaughey'),
--('Anne Hathaway'),
--('Tom Holland'),
--('Zendaya'),
--('Daniel Radcliffe'),
--('Emma Watson'),
--('Rupert Grint'),
--('keanu Reeves'),
--('Tom Hanks'),
--('Leonardo DiCaprio'),
--('Joseph Gordon-Levitt'),
--('Natalie Portman'),
--('Ashton Kutcher'),
--('Mila Kunis'),
--('Amy Smart'),
--('Emily Blunt'),
--('Luke Evans')

--insert into MovieActors (ActorId, MovieId) values 
--(1,6),
--(1,9),
--(2,1),
--(2,1),
--(3,1),
--(4,3),
--(5,3),
--(6,2),
--(7,2),
--(8,2),
--(9,4),
--(10,5),
--(11,7),
--(11,10),
--(12,10),
--(13,11),
--(15,11),
--(13,8),
--(14,8),
--(14,12),
--(16,12),
--(17,13),
--(18,13)


--insert into Hall values
--('Hall 1'),
--('Hall 2'),
--('Hall 3'),
--('Hall 4'),
--('Hall 5'),
--('Hall 6'),
--('Hall Platinium')


--insert into Sessions values 
--('2022-01-26 10:00', 1, 2),
--('2022-01-26 10:15', 2, 6),
--('2022-01-26 10:25', 3, 9),
--('2022-01-26 10:05', 4, 12),
--('2022-01-26 10:35', 5, 4),
--('2022-01-26 10:50', 6, 13),
--('2022-01-26 12:30', 7, 6),
--('2022-01-26 18:00', 1, 9),
--('2022-01-26 18:15', 4, 6),
--('2022-01-26 15:30', 7, 4),
--('2022-01-26 14:50', 5, 13) 

--insert into Customers values 
--('Aytac Ramazanli','1234567'),
--('Ilkin Bayramov','1234568'),
--('Lale Rzayeva','1234568'),
--('Nigar Rzayeva','1234568'),
--('Orxan Abdullayev','1234568')

--insert into Tickets (SessionId, CustomersId,PriceId)values 
--(9,1,8),
--(8,3,7),
--(8,4,7),
--(4,5,1)

--create view v_TicketsInfo
--as
--select c.Fullname 'Customer', m.Name 'Movie', g.Name 'Genre', h.Name 'Hall', Time  from Tickets t
--join Customers c
--on t.CustomersId=c.Id

--join Sessions s
--on t.SessionId=s.Id

--join Hall h
--on s.HallId=h.Id

--join Movies m
--on s.MovieId=m.Id

--join MovieGenres mg
--on m.Id=mg.MovieId

--join Genres g
--on g.Id=mg.GenreId


--create table Tariffs(
--Id int primary key identity,
--TariffName nvarchar(40)
--)

--create table Formats(
--Id int primary key identity,
--FormatName nvarchar(40)
--)

--create table Prices(
--Id int primary key identity,
--Price int default 0,
--FormatId int references Formats(Id),
--TariffId int references Tariffs(Id)
--)

--alter table Tickets 
--add PriceId int references Prices(Id)

--insert into Tariffs values 
--('Morning'),
--('Afternoon'),
--('Evening')

--insert into Formats values 
--('2D'),
--('3D'),
--('Platinium')

--insert into Prices values
--(3,1,1),
--(4,2,1),
--(15,3,1),
--(5,1,2),
--(6,2,2),
--(20,3,2),
--(7,1,3),
--(8,2,3),
--(25, 3, 3)

--select c.Fullname 'Customer', m.Name 'Movie', g.Name 'Genre', h.Name 'Hall', Time , Price, FormatName from Tickets t
--join Customers c
--on t.CustomersId=c.Id

--join Sessions s
--on t.SessionId=s.Id

--join Hall h
--on s.HallId=h.Id

--join Movies m
--on s.MovieId=m.Id

--join MovieGenres mg
--on m.Id=mg.MovieId

--join Genres g
--on g.Id=mg.GenreId

--join Prices p
--on t.PriceId=p.Id

--join Formats f
--on p.FormatId=f.Id