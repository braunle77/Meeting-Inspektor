---
id: I010
type: bug
title: Colenet-Logo zu groß und dominant im Header
status: backlog
---

## Problem

Das Logo wird mit `height:64px` dargestellt. Der weiße Container addiert `8px` Padding
oben und unten → der Logo-Bereich ist **80px hoch**. Da der Header `align-items:center`
und `22px/20px` vertikales Padding hat, ergibt sich eine Gesamthöhe von **~122px** —
getrieben vom Logo, nicht vom Titel. Der Titel (h1 + Subzeile) kommt auf nur ~57px.

Erschwerend kommt hinzu: Die Original-Logo-Datei hat eingebauten Leerraum in der
Bounding Box — ca. **16 % oben, 26 % unten**. Das sichtbare Logo-Motiv füllt also nur
~58 % der angegebenen Höhe aus. Bei `height:64px` sind das effektiv nur ~37px sichtbares
Logo, der Rest ist transparentes/weißes Padding aus der Datei selbst. Dadurch „schwimmt"
das Logo im Container und lässt sich nicht sauber an der Titelzeile ausrichten — egal
welches vertikales Alignment gesetzt wird.

Zusätzlich wirkt der weiße Pill-Container (`background:rgba(255,255,255,0.95)`) optisch
schwer und wie ein Fremdkörper im Teal-Header.

## Betroffene Zeile

`meeting-inspektor.html`, Zeile 424–425:
```html
<div style="...;padding:8px 12px;...">
  <img ... style="height:64px;width:auto;display:block">
```

## Erwartetes Verhalten

- Logo ist proportional: nicht größer als nötig für Wiedererkennung (~28–32px Höhe)
- Header-Höhe wird vom Textteil (Titel + Subzeile) bestimmt, nicht vom Logo
- Weißer Container bleibt, wird aber schlanker

## Fix

Zwei Teilprobleme müssen gemeinsam gelöst werden:

**1. Eingebauten Leerraum neutralisieren**

Das PNG-`<img>` mit negativen Margins beschneiden, sodass nur das sichtbare Motiv
den Platz beansprucht. Der Container braucht dafür `overflow:hidden`:

```html
<div style="overflow:hidden; ...">
  <img style="
    height: 46px;          /* größer als Ziel, weil Leerraum mitgeliefert wird */
    margin-top: -7px;      /* ~16 % von 46px oben abschneiden */
    margin-bottom: -12px;  /* ~26 % von 46px unten abschneiden */
    width: auto;
    display: block;
  ">
</div>
```

Das ergibt ein sichtbares Motiv von ca. 46 − 7 − 12 = **27px** — proportional zum Header.

**2. Container-Padding reduzieren**

```html
<!-- alt -->
padding: 8px 12px

<!-- neu -->
padding: 5px 10px
```

**Ergebnis:** Logo-Bereich ~37px → Header-Höhe von h1+p (~57px) bestimmt
→ Gesamthöhe ~99px statt ~122px. Logo fluchtet sauber mit der Titelzeile.

## Priorität

Niedrig — visuell, kein Funktionsfehler.
