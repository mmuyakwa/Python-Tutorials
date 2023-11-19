#!bin/bash

# Erstellen einer neuen conda-Umgebung
# Befehl: conda create -n <name> <python-version>
conda create -n python-env python=3.10

# Aktivieren der neuen Umgebung
# Befehl: conda activate <name>
conda activate python-env

# Deaktivieren der Umgebung
# Befehl: conda deactivate
conda deactivate

# Löschen der Umgebung
# Befehl: conda remove -n <name> --all
conda remove -n python-env --all

# Auflisten der Umgebungen
# Befehl: conda env list
conda env list

# Zeige wo conda die virtuellen Umgebungen speichert
# Befehl: conda info --envs
conda info --envs

# Auflisten der installierten Pakete
# Befehl: conda list
conda list

# Installieren von Paketen aus einer requirements.txt-Datei
# Befehl: conda install --file <datei>
conda install --file requirements.txt

# Installieren eines Pakets
# Befehl: conda install <paket>
conda install numpy

# Installieren eines Pakets in einer bestimmten Version
# Befehl: conda install <paket>=<version>
conda install numpy=1.21.2
