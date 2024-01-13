-- Erstellen der Tabelle "Künstler"
CREATE TABLE Kuenstler
(
    KuenstlerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Gruendungsjahr INT,
    Herkunftsland VARCHAR(100)
);

-- Erstellen der Tabelle "Album"
CREATE TABLE Album
(
    AlbumID INT PRIMARY KEY,
    Titel VARCHAR(100),
    Erscheinungsjahr INT,
    KuenstlerID INT,
    FOREIGN KEY (KuenstlerID) REFERENCES Kuenstler(KuenstlerID)
);

-- Erstellen der Tabelle "Lied"
CREATE TABLE Lied
(
    LiedID INT PRIMARY KEY,
    Titel VARCHAR(100),
    Laenge INT,
    AlbumID INT,
    KuenstlerID INT,
    FOREIGN KEY (AlbumID) REFERENCES Album(AlbumID),
    FOREIGN KEY (KuenstlerID) REFERENCES Kuenstler(KuenstlerID)
);

-- Erstellen der Tabelle "Genre"
CREATE TABLE Genre
(
    GenreID INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Erstellen der Verknüpfungstabelle "AlbumGenre"
CREATE TABLE AlbumGenre
(
    AlbumID INT,
    GenreID INT,
    PRIMARY KEY (AlbumID, GenreID),
    FOREIGN KEY (AlbumID) REFERENCES Album(AlbumID),
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);