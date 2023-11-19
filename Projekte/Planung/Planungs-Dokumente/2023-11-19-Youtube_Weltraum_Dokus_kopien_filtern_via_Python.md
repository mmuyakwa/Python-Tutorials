# Youtube Weltraum-Dokus kopien filtern via Python

## Zielsetzung

Das Ziel dieses Projekts ist es, Videos auf Youtube zu erkennen, die sich mit dem Thema Weltraum befassen, und sicherzustellen, dass keine Duplikate heruntergeladen werden. Neue Videos zum gewünschten Thema sollen gefunden und überprüft werden, ob sie bereits bekannt sind.

## Grundgedanke

Oft werden die gleichen Videos zum Thema Weltraum auf Youtube hochgeladen. Um Dopplungen zu vermeiden, soll ein Skript entwickelt werden, das die Videos erkennt und überprüft, ob sie bereits in einer Liste bekannter Videos enthalten sind. Falls ein Video zwischenzeitlich gelöscht wurde, soll die URL aktualisiert werden.

## Durchführungsschritte

1. **Erstellen einer Liste bekannter Videos (ggf. manuell)**: Eine Liste von Videos, die sich mit dem Thema Weltraum befassen, wird in einer Textdatei gespeichert. Diese Liste enthält die URLs der Videos.

2. **Erstellen von Textdateien mit Untertiteln (via Python-Skript)**: Die Untertitel der Videos werden in Textdateien gespeichert. Die Textdateien werden nach dem Muster `Video-<ID>.txt` benannt, wobei `<ID>` die ID des Videos ist. Die Textdateien enthalten die ID des Videos und die Untertitel des Videos.

3. **Suche nach neuen Videos (via Python-Skript)**: Ein Python-Skript sucht nach Youtube-Videos, die sich mit dem Thema Weltraum befassen und nicht älter als 31 Tage sind. Hierfür kann die Youtube-API verwendet werden. Die Videos werden anhand ihrer Untertitel mit den vorhandenen Textdateien mit Untertiteln verglichen.

4. **Überprüfung der Videos (manuell)**: Wenn die Untertitel der Videos nicht in den vorhandenen Textdateien mit Untertiteln gefunden werden, handelt es sich um neue Videos. Diese werden heruntergeladen und in die Liste der bekannten Videos aufgenommen. Falls ein Video wiedererkannt wird, wird überprüft, ob der ursprüngliche Link noch funktioniert. Wenn nicht, wird der neue Link in der Liste der Videos aktualisiert.

5. **Aktualisierung der Liste bekannter Videos**: Die neuen Videos werden gesichtet und, sofern sie sich tatsächlich um neue Videos handeln, in die Liste der bekannten Videos aufgenommen.

6. **Aktualisierung der Textdateien mit Untertiteln**: Die Untertitel der neuen Videos werden in die Textdateien mit den Untertiteln aufgenommen.

## Anforderungen

- Python: Das Skript wird in Python geschrieben.
- Youtube-API: Die Youtube-API wird verwendet, um nach Videos zu suchen und Informationen über diese abzurufen.
- Textdateien: Die Liste der bekannten Videos und die Textdateien mit den Untertiteln werden in Textdateien gespeichert.

## Beispiel

Hier ist ein Beispiel für die Struktur der Textdatei mit den bekannten Videos:

```
https://www.youtube.com/watch?v=abc123
https://www.youtube.com/watch?v=def456
https://www.youtube.com/watch?v=ghi789
```

Und hier ist ein Beispiel für die Struktur einer Textdatei mit den Untertiteln:

```
Video: abc123
Dies ist der Untertitel des Videos abc123.

Video: def456
Dies ist der Untertitel des Videos def456.

Video: ghi789
Dies ist der Untertitel des Videos ghi789.
```

## Offene Fragen

- Wie wird die Youtube-API in Python verwendet, um nach Videos zu suchen und Informationen über diese abzurufen?
- Wie werden die Untertitel eines Youtube-Videos in Python heruntergeladen?
- Wie wird überprüft, ob ein Video bereits in der Liste der bekannten Videos enthalten ist?
- Wie wird die Liste der bekannten Videos aktualisiert, wenn ein Video wiedererkannt wird?
- Wie werden die Textdateien mit den Untertiteln aktualisiert, wenn neue Videos gefunden werden?
