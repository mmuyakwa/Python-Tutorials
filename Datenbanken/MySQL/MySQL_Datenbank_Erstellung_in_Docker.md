# MySQL-Datenbank-Erstellung in Docker

|Attribute|Description|
|--:|:--|
|Domain > Expert|Informatik > Datenbankadministrator|
|Keywords|MySQL, Docker, docker-compose, Datenbank, SQL, Umgebungsvariablen|
|Goal|Erstellung einer MySQL-Datenbank in Docker mittels docker-compose und zugehöriger Dateien|

---

### Zielsetzung

Erstellung einer MySQL-Datenbank in Docker für eine Musiksammlung, inklusive aller notwendigen Konfigurationsdateien und Anweisungen.

### Grundgedanke

Die Bereitstellung einer MySQL-Datenbank in einem Docker-Container ermöglicht eine einfache und konsistente Einrichtung und Verwaltung der Datenbankumgebung.

### Durchführungsschritte

- Erstellung eines Dockerfiles für die MySQL-Datenbank
- Konfiguration der docker-compose.yml Datei
- Definition der Umgebungsvariablen in einer .env Datei
- Erstellung einer .sql Datei mit der Datenbankstruktur und Beispieldaten
- Dokumentation des Prozesses in einer .md Datei

### Anforderungen

- Docker und docker-compose müssen auf dem System installiert sein.
- Grundverständnis von Docker, Docker Compose und MySQL ist erforderlich.

### Benötigte Dateien

Die folgenden Dateien und ihre Inhalte sind für die Einrichtung der MySQL-Datenbank in Docker erforderlich:

#### Dockerfile

```dockerfile
FROM mysql:latest
ENV MYSQL_DATABASE musiksammlung
COPY ./scripts/ /docker-entrypoint-initdb.d/
```

#### docker-compose.yml

```yaml
version: '3.1'

services:
  db:
    build: .
    ports:
      - "3306:3306"
    environment:
      MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}
      MYSQL_DATABASE: ${MYSQL_DATABASE}
    env_file:
      - .env
```

#### .env

```env
MYSQL_ROOT_PASSWORD=sehrgeheim
MYSQL_DATABASE=musiksammlung
```

#### musiksammlung.sql

Eine SQL-Datei mit der Datenbankstruktur liegt im Ordner `scripts` und wird beim Starten des Containers automatisch ausgeführt.

```sql
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
```

#### Musiksammlung_Dokumentation.md

```markdown
# Musiksammlung Datenbank Dokumentation

Diese Dokumentation beschreibt die Schritte zur Erstellung einer MySQL-Datenbank für eine Musiksammlung in Docker.

## Dockerfile

Das Dockerfile enthält Anweisungen zum Erstellen eines Docker-Images für die MySQL-Datenbank.

## docker-compose.yml

Die docker-compose.yml Datei definiert den Service für die Datenbank und verwendet das Dockerfile für den Build-Prozess.

## .env

Die .env Datei enthält Umgebungsvariablen, die von Docker Compose verwendet werden.

## musiksammlung.sql

Die musiksammlung.sql Datei enthält den SQL-Code für die Erstellung der Datenbankstruktur und das Einfügen von Beispieldaten.

## Schritte zur Ausführung

1. Docker und docker-compose installieren.
2. Alle Dateien im selben Verzeichnis ablegen.
3. `docker-compose up --build` ausführen, um den Container zu erstellen und zu starten.

```

### Offene Fragen

- Sollen zusätzliche Sicherheitsfeatures wie Netzwerkeinstellungen oder Benutzerrollen in der Docker-Konfiguration berücksichtigt werden?
- Ist eine automatische Backup-Lösung für die Datenbank gewünscht?
- Gibt es spezielle Anforderungen an die Performance oder Skalierbarkeit der Datenbank?

> _See also:_
> 🐳 [Docker Dokumentation](https://www.google.com/search?q=Docker+Dokumentation)
> 📦 [docker-compose Referenz](https://www.google.com/search?q=docker-compose+Referenz)
> _You may also enjoy:_
> 🛠️ [MySQL Optimierungstipps](https://www.google.com/search?q=MySQL+Optimierungstipps)
> 🔄 [Automatisierte Backups für MySQL](https://www.google.com/search?q=Automatisierte+Backups+f%C3%BCr+MySQL)
