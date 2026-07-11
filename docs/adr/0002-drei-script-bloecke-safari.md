# Drei Script-Blöcke und Safari-Schreibregeln

Safari lud den ursprünglichen einzelnen Script-Block der Datei nicht zuverlässig; der
Kunde arbeitet auf Macs mit Safari. Der JavaScript-Code ist deshalb auf drei
`<script>`-Blöcke aufgeteilt (Parsing/Rendering · Datenpflege · Flight Levels/Init), und
es gelten zwei feste Schreibregeln: keine verschachtelten Template-Literals
(String-Konkatenation stattdessen) und keine deutschen Anführungszeichen `„…"` in
JS-Strings. Neue Funktionen müssen in den fachlich passenden Block einsortiert werden.

## Konsequenzen

- Die Blockgrenzen sind eine Safari-Maßnahme, keine fachliche Architektur – Funktionen
  eines Features können blockübergreifend liegen (Konstanten in Block 1, Renderer in Block 3).
- Code wirkt stellenweise altmodisch (Konkatenation statt Template-Literals); das ist
  Absicht, nicht Nachlässigkeit.
