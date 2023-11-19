#!bin/bash

# Erstellen einer neuen pipenv-Umgebung
# Befehl: pipenv --python <python-version>
pipenv --python 3.10

# Aktivieren der neuen Umgebung
# Befehl: pipenv shell
pipenv shell

# Deaktivieren der Umgebung
# Befehl: exit
exit

# Löschen der Umgebung
# Befehl: pipenv --rm
pipenv --rm

# Auflisten der Umgebungen
# Befehl: pipenv --venv
pipenv --venv

# Zeige wo pipenv die virtuellen Umgebungen speichert
# Befehl: pipenv --where
pipenv --where

# Auflisten der installierten Pakete
# Befehl: pipenv graph
pipenv 

# Installieren von Paketen aus einer requirements.txt-Datei
# Befehl: pipenv install -r <datei>
pipenv install -r requirements.txt

# Installieren eines Pakets
# Befehl: pipenv install <paket>
pipenv install numpy

# Installieren eines Pakets in einer bestimmten Version
# Befehl: pipenv install <paket>==<version>
pipenv install numpy==1.21.2

# Aktualisieren eines Pakets
# Befehl: pipenv update <paket>
pipenv update numpy

# Aktualisieren aller Pakete
# Befehl: pipenv update
pipenv update

# Deinstallieren eines Pakets
# Befehl: pipenv uninstall <paket>
pipenv uninstall numpy

