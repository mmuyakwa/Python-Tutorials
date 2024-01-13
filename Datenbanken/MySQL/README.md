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
