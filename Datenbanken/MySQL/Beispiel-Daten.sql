-- Selektiere Datenbank
use musiksammlung;

-- Einfügen von Datensätzen in Tabelle "Kuenstler"

INSERT INTO Kuenstler
    (KuenstlerID, Name, Gruendungsjahr, Herkunftsland)
VALUES
    (1, 'The Beatles', 1960, 'UK'),
    (2, 'Queen', 1970, 'UK'),
    (3, 'Michael Jackson', 1964, 'USA');

-- Einfügen von Datensätzen in Tabelle "Album"

INSERT INTO Album
    (AlbumID, Titel, Erscheinungsjahr, KuenstlerID)
VALUES
    (1, 'Abbey Road', 1969, 1),
    (2, 'A Night at the Opera', 1975, 2),
    (3, 'Thriller', 1982, 3);

-- Einfügen von Datensätzen in Tabelle "Lied"

INSERT INTO Lied
    (LiedID, Titel, Laenge, AlbumID, KuenstlerID)
VALUES
    (1, 'Here Comes the Sun', 185, 1, 1),
    (2, 'Bohemian Rhapsody', 354, 2, 2),
    (3, 'Billie Jean', 294, 3, 3);

-- Einfügen von Datensätzen in Tabelle "Genre"

INSERT INTO Genre
    (GenreID, Name)
VALUES
    (1, 'Rock'),
    (2, 'Pop'),
    (3, 'R&B');

-- Einfügen von Datensätzen in Tabelle "AlbumGenre"

INSERT INTO AlbumGenre
    (AlbumID, GenreID)
VALUES
    (1, 1),
    (2, 1),
    (3, 2);
