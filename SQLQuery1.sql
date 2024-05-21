Create database IMDB
create table Genres(
Id int primary key identity,
[Name] nvarchar(20) unique not null,
)
create table Directors(
Id int primary key identity,
[Name] nvarchar(50) not null,
)
create table Actors(
Id int primary key identity,
[Name] nvarchar(50) not null,
)
create table Movies(
Id int primary key identity,
[Name] nvarchar(100) not null,
IMDB_Score decimal (2,1),
Duration time, 
DirectorId int foreign key references Directors(Id)
)
create table Movies_Actors(
Id int primary key identity,
MovieId int foreign key references Movies(Id),
ActorId int foreign key references Actors(Id),
)
create table Movies_Genres(
Id int primary key identity,
MovieId int foreign key references Movies(Id),
GenreId int foreign key references Genres(Id),
)
INSERT INTO Genres ([Name]) VALUES ('Action');
INSERT INTO Genres ([Name]) VALUES ('Comedy');
INSERT INTO Genres ([Name]) VALUES ('Drama');
INSERT INTO Genres ([Name]) VALUES ('Fantasy');
INSERT INTO Genres ([Name]) VALUES ('Horror');
INSERT INTO Genres ([Name]) VALUES ('Romance');
INSERT INTO Genres ([Name]) VALUES ('Sci-Fi');
INSERT INTO Genres ([Name]) VALUES ('Thriller');
INSERT INTO Genres ([Name]) VALUES ('Adventure');
INSERT INTO Genres ([Name]) VALUES ('Mystery');

INSERT INTO Actors ([Name]) VALUES ('Leonardo DiCaprio');
INSERT INTO Actors ([Name]) VALUES ('Brad Pitt');
INSERT INTO Actors ([Name]) VALUES ('Scarlett Johansson');
INSERT INTO Actors ([Name]) VALUES ('Robert Downey Jr.');
INSERT INTO Actors ([Name]) VALUES ('Meryl Streep');
INSERT INTO Actors ([Name]) VALUES ('Tom Hanks');
INSERT INTO Actors ([Name]) VALUES ('Natalie Portman');
INSERT INTO Actors ([Name]) VALUES ('Morgan Freeman');
INSERT INTO Actors ([Name]) VALUES ('Jennifer Lawrence');
INSERT INTO Actors ([Name]) VALUES ('Denzel Washington');
INSERT INTO Actors ([Name]) VALUES ('Chris Hemsworth');
INSERT INTO Actors ([Name]) VALUES ('Emma Stone');
INSERT INTO Actors ([Name]) VALUES ('Christian Bale');
INSERT INTO Actors ([Name]) VALUES ('Anne Hathaway');
INSERT INTO Actors ([Name]) VALUES ('Samuel L. Jackson');
INSERT INTO Actors ([Name]) VALUES ('Angelina Jolie');
INSERT INTO Actors ([Name]) VALUES ('Will Smith');
INSERT INTO Actors ([Name]) VALUES ('Cate Blanchett');
INSERT INTO Actors ([Name]) VALUES ('Matthew McConaughey');
INSERT INTO Actors ([Name]) VALUES ('Margot Robbie');
INSERT INTO Actors ([Name]) VALUES ('Jeff Goldblum');
INSERT INTO Actors ([Name]) VALUES ('Laura Dern');

INSERT INTO Directors ([Name]) VALUES ('Christopher Nolan');
INSERT INTO Directors ([Name]) VALUES ('Steven Spielberg');
INSERT INTO Directors ([Name]) VALUES ('Quentin Tarantino');
INSERT INTO Directors ([Name]) VALUES ('Martin Scorsese');
INSERT INTO Directors ([Name]) VALUES ('James Cameron');
INSERT INTO Directors ([Name]) VALUES ('Ridley Scott');
INSERT INTO Directors ([Name]) VALUES ('Peter Jackson');
INSERT INTO Directors ([Name]) VALUES ('Kathryn Bigelow');
INSERT INTO Directors ([Name]) VALUES ('David Fincher');
INSERT INTO Directors ([Name]) VALUES ('Guillermo del Toro');

INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('Inception', 8.8, '02:28:00', 1);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('Jurassic Park', 8.1, '02:07:00', 2);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('Pulp Fiction', 8.9, '02:34:00', 3);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('The Wolf of Wall Street', 8.2, '03:00:00', 4);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('Avatar', 7.8, '02:42:00', 5);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('Gladiator', 8.5, '02:35:00', 6);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('The Lord of the Rings: The Return of the King', 8.9, '03:21:00', 7);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('The Hurt Locker', 7.6, '02:11:00', 8);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('Fight Club', 8.8, '02:19:00', 9);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('Pans Labyrinth', 8.2, '01:58:00', 10);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('Movie 43', 4.3, '01:34:00', 2);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('Cats', 2.8, '01:50:00', 6);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('The Room', 3.7, '01:39:00', 4);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('Battlefield Earth', 2.5, '01:58:00', 5);
INSERT INTO Movies ([Name], IMDB_Score, Duration, DirectorId) VALUES ('Gigli', 2.6, '02:01:00', 9);

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (1, 1); -- Action
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (1, 7); -- Sci-Fi
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (1, 9); -- Adventure

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (2, 1); -- Action
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (2, 7); -- Sci-Fi
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (2, 9); -- Adventure

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (3, 1); -- Action
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (3, 2); -- Comedy
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (3, 3); -- Drama

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (4, 2); -- Comedy
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (4, 3); -- Drama

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (5, 4); -- Fantasy
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (5, 7); -- Sci-Fi
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (5, 9); -- Adventure

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (6, 1); -- Action
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (6, 3); -- Drama
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (6, 9); -- Adventure

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (7, 1); -- Action
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (7, 4); -- Fantasy
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (7, 9); -- Adventure

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (8, 1); -- Action
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (8, 3); -- Drama
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (8, 8); -- Thriller

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (9, 1); -- Action
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (9, 3); -- Drama
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (9, 8); -- Thriller

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (10, 4); -- Fantasy
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (10, 3); -- Drama
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (10, 8); -- Thriller

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (11, 2); -- Comedy

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (12, 4); -- Fantasy
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (12, 6); -- Romance

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (13, 3); -- Drama

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (14, 1); -- Action
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (14, 7); -- Sci-Fi

INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (15, 2); -- Comedy
INSERT INTO Movies_Genres (MovieId, GenreId) VALUES (15, 6); -- Romance

INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (1, 1);
INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (1, 2);

INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (2, 20);
INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (2, 21);

INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (3, 22);
INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (3, 23);

INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (4, 4);
INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (4, 5);

INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (5, 6);
INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (5, 7);

INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (6, 8);
INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (6, 9);

INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (7, 10);
INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (7, 11);

INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (8, 12);
INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (8, 13);

INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (9, 14);
INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (9, 15);

INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (10, 16);
INSERT INTO Movies_Actors (MovieId, ActorId) VALUES (10, 17);

SELECT 
    m.[Name] AS MovieName,
    m.IMDB_Score,
    g.[Name] AS GenreName,
    d.[Name] AS DirectorName
FROM 
    Movies m
JOIN 
    Movies_Genres mg ON m.Id = mg.MovieId
JOIN 
    Genres g ON mg.GenreId = g.Id
JOIN 
    Directors d ON m.DirectorId = d.Id
WHERE 
    m.IMDB_Score > 6;

SELECT 
    m.[Name] AS MovieName,
    m.IMDB_Score,
    g.[Name] AS GenreName,
    d.[Name] AS DirectorName
FROM 
    Movies m
JOIN 
    Movies_Genres mg ON m.Id = mg.MovieId
JOIN 
    Genres g ON mg.GenreId = g.Id
JOIN 
    Directors d ON m.DirectorId = d.Id
WHERE 
    g.[Name] LIKE '%a%';

SELECT 
    m.[Name] AS MovieName,
    m.IMDB_Score,
    g.[Name] AS GenreName,
    m.Duration
FROM 
    Movies m
JOIN 
    Movies_Genres mg ON m.Id = mg.MovieId
JOIN 
    Genres g ON mg.GenreId = g.Id
WHERE 
    LEN(m.[Name]) > 10
    AND m.[Name] LIKE '%t';



SELECT
    m.[Name] AS Movie_Name,
    m.IMDB_Score,
    STRING_AGG(g.[Name], ', ') AS Genres,
    STRING_AGG(a.[Name], ', ') AS Actors
FROM
    Movies m
INNER JOIN
    Movies_Genres mg ON m.Id = mg.MovieId
INNER JOIN
    Genres g ON mg.GenreId = g.Id
INNER JOIN
    Movies_Actors ma ON m.Id = ma.MovieId
INNER JOIN
    Actors a ON ma.ActorId = a.Id
WHERE
    m.IMDB_Score > (
        SELECT
            AVG(IMDB_Score)
        FROM
            Movies
    )
GROUP BY
    m.Id, m.[Name], m.IMDB_Score
ORDER BY
    m.IMDB_Score DESC;
