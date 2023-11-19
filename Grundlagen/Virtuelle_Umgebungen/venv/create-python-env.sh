#!bin/bash

# Erstellen einer neuen Python-Umgebung mit venv
# Befehl: python -m venv <name>
python -m venv python-env

# Aktivieren der neuen Umgebung unter Linux, MacOS
# Befehl: source <name>/bin/activate
source python-env/bin/activate

# Aktivieren der neuen Umgebung unter Windows
# Befehl: <name>\Scripts\activate.bat
python-env\Scripts\activate.bat

# Deaktivieren der Umgebung
# Befehl: deactivate
deactivate

# Löschen der Umgebung unter Linux, MacOS
# Befehl: rm -rf <name>
rm -rf python-env

# Löschen der Umgebung unter Windows
# Befehl: rmdir /s <name>
rmdir /s python-env

# Auflisten der Umgebungen unter Linux, MacOS
# Befehl: ls -l <name>
ls -l python-env

# Auflisten der Umgebungen unter Windows
# Befehl: dir <name>
dir python-env

# Auflisten der installierten Pakete
# Befehl: pip list
pip list

# Installieren von Paketen aus einer requirements.txt-Datei
# Befehl: pip install -r <datei>
pip install -r requirements.txt

# Installieren eines Pakets
# Befehl: pip install <paket>
pip install numpy

# Installieren eines Pakets in einer bestimmten Version
# Befehl: pip install <paket>==<version>
pip install numpy==1.21.2

# Aktualisieren eines Pakets
# Befehl: pip install --upgrade <paket>
pip install --upgrade numpy

# Aktualisieren aller Pakete
# Befehl: pip install --upgrade
pip install --upgrade

# Deinstallieren eines Pakets
# Befehl: pip uninstall <paket>
pip uninstall numpy

