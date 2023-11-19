# Pros und Cons von den verschiedenen virtuellen Umgebungen

## conda

- Pro
  - Einfache Bereitstellung von Python-Umgebungen
  - Einfache Bereitstellung von Python-Umgebungen in verschiedenen Python-Versionen
  - Einfache Verwendung
  - Einfache Verwaltung von Bibliotheken
  - Einfache Verwaltung von Umgebungen
  - Einfache Verwaltung von Abhängigkeiten

- Cons
  - Die Daten werden in einem zentralen Ordner gespeichert, nicht im Projektordner
  - Die Daten werden in einem proprietären Format gespeichert

## pipenv

- Pro
  - Einfache Verwendung
  - Einfache Verwaltung von Bibliotheken
  - Einfache Verwaltung von Umgebungen
  - Einfache Verwaltung von Abhängigkeiten
  - In der Pipfile werden die Bibliotheken und die Python-Version gespeichert
- Cons
  - Die Daten werden in einem zentralen Ordner gespeichert, nicht im Projektordner
  - Manchmal Probleme mit der Installation von Bibliotheken (Pipfile.lock)

## venv

- Pro
  - Einfache Verwendung
  - Einfache Verwaltung von Bibliotheken
  - Einfache Verwaltung von Umgebungen
  - Einfache Verwaltung von Abhängigkeiten
  - Die Daten werden im Projektordner gespeichert
- Cons
  - Die Daten werden im Projektordner gespeichert. Muss bei Weitergabe bedacht werden.

## virtualenv

- Pro
  - Einfache Verwendung
  - Einfache Verwaltung von Bibliotheken
  - Einfache Verwaltung von Umgebungen
  - Einfache Verwaltung von Abhängigkeiten
  - Die Daten werden im Projektordner gespeichert
- Cons
  - Die Daten werden im Projektordner gespeichert. Muss bei Weitergabe bedacht werden.

## Vergleich venv und virtualenv

- venv ist in Python 3.3 eingeführt worden
- virtualenv ist für Python 2.7 entwickelt worden

### Unterschiede zwischen venv und virtualenv die zu beachten sind bei der Verwendung

- virtualenv kann auch mit Python 3 verwendet werden
- virtualenv kann auch mit Python 2 verwendet werden
- venv kann nur mit Python 3 verwendet werden
- venv kann nicht mit Python 2 verwendet werden

### Best Practices für die Verwendung von venv und virtualenv

- virtualenv sollte nur mit Python 2 verwendet werden
- venv sollte nur mit Python 3 verwendet werden
