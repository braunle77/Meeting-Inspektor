# Flight Levels – Eine kurze Einführung (deutsches Original)

**Autoren:** Siegfried Kaltenecker · Klaus Leopold
**Verlag:** dpunkt.verlag GmbH, Heidelberg
**Erschienen:** Wien, Oktober 2021 (Vorwort), Copyright 2022
**Umfang:** 34 Textseiten (+ Verlagswerbung)
**Datei:** `Flight_Levels.pdf` (vom Nutzer bereitgestellt, 27.07.2026)

> **Status dieser Datei: verbindliche Referenz.** Ab 27.07.2026 ist dieses Buch die
> **einzige** Quelle, gegen die alle Flight-Levels-Aussagen im Meeting-Inspektor-Tool geprüft
> werden. Diese Verschriftlichung ist möglichst wortgetreu (keine Zusammenfassung). Wörtliche
> Zitate stehen in Anführungszeichen; Seitenzahlen sind als Kommentar-Anker markiert.
> Alles, was frühere Recherchen (englische Ausgabe, flightlevels.io, Blogs) behauptet haben
> und sich hier nicht wiederfindet, gilt nicht mehr als Modell-Beleg — siehe
> `flight-levels-originalquelle.md` (als überholt gekennzeichnet).

---

<!-- S. 2-3 -->
## Vorwort

»Ten Years After« nannte sich die britische Rockband, die vor allem in den 1960er-Jahren
für Furore sorgte. Gäbe es die Band heute noch, wäre sie die Idealbesetzung für ein kleines
Ständchen. Schließlich ist es genau 10 Jahre her, dass wir mit »Kanban in der IT« unser
erstes gemeinsames Buch geschrieben haben.

Seitdem ist viel passiert. Es folgten weitere Bücher, Artikel, Vorträge, Community-Events,
vor allem aber eine Vielzahl von Kundenprojekten, in denen wir unsere Erkenntnisse anwenden
und erweitern konnten. Es entspricht der bereits 2011 anvisierten Kultur der kontinuierlichen
Verbesserung, dass wir uns dabei von der Ebene agiler Teams konsequent in Richtung agiler
Organisationsentwicklung bewegt haben. **Die Flight Levels fassen diese Bewegung zusammen,
ohne damit ein normatives, gewissermaßen in Stein gemeißeltes Theoriegebäude zu schaffen.
Sie repräsentieren vielmehr ein offenes Denk- und Kommunikationsmodell**, das mit jeder
praktischen Anwendung neue Nuancen gewinnt und von einer internationalen Flight Levels
Community intensiv diskutiert wird.

Mit dieser Broschüre wollen wir das Flight-Levels-Modell auch im deutschsprachigen Raum
einem breiteren Publikum vorstellen. Dafür beschreiben wir:

- die Grundidee verschiedener Flugebenen und deren Bedeutung für Unternehmen,
- die fünf Kernaktivitäten, die auf allen Ebenen zur Anwendung kommen,
- die drei Ebenen operative Umsetzung, Koordination und Strategie,
- die Abläufe zwischen den einzelnen Ebenen, also die Flight-Levels-Systemarchitektur, sowie
- den Einführungsprozess, also all das, was Sie in puncto Change und Leadership beachten
  sollten, um mit den Flight Levels bestmöglich abzuheben.

Motivation für das Erscheinen der vorliegenden Broschüre war es, ein solides Fundament für
den »Flight Levels Day«, die erste deutschsprachige Konferenz zum Thema
(https://fld.inside-agile.de/), zu schaffen, auf der Flight-Levels-Praktikerinnen und
-praktiker aus den unterschiedlichsten Kontexten ihre Erfahrungen vortragen und teilen.
Damit möchten wir einerseits möglichst vielen Fach- und Führungskräften einen
niedrigschwelligen Zugang zu den Flight Levels bieten, andererseits für erfahrene
Agilistinnen zusammenfassen, was wir gerne den letzten Stand des Irrtums nennen. In diesem
Sinne freuen wir uns schon jetzt auf bevorstehende Diskussionen und Ihr Feedback unter
hello@flightlevels.io und wünschen Ihnen eine inspirierende Lektüre.

*Siegfried Kaltenecker & Klaus Leopold, Wien, im Oktober 2021*

---

<!-- S. 4-6 -->
## 1 Was sind Flight Levels?

Den Ursprung der Flight Levels kann man wahrscheinlich auf 2011 datieren, als wir 300 Teams
»agil machen« sollten. Damit hätten wir wahrscheinlich die größte Suboptimierung aller
Zeiten angezettelt, die der Kundin am Ende mehr Schaden als Nutzen gebracht hätte. Warum?
Im Buch »Agilität neu denken« von Klaus [Leopold 2022] wird als eine Ursache für die
enttäuschenden Transformationsergebnisse angeführt, dass die Abhängigkeiten zwischen den
einzelnen Teams und Produkten nicht koordiniert bzw. gemanagt wurden. Diese nicht
gemanagten **Abhängigkeiten** bestehen nicht nur zwischen Teams, die gemeinsam ein Produkt
liefern sollen – sie bestehen auch zwischen den unterschiedlichen Planungshorizonten in
einer Organisation: Was strategisch entschieden und dann operativ umgesetzt wird, sind oft
zwei sehr verschiedene Paar Schuhe. Horizontal wie vertikal ist das grundlegende Problem:
Die Leute reden zu wenig miteinander bzw. sie reden miteinander nicht über die richtigen
Dinge. Wenn eine Organisation wirklich agil handeln können will, muss sie sich sämtliche
Wertströme **von der Strategie bis zur Umsetzung** ansehen und die manchmal großen Gräben
überbrücken, die sich in diesem Wertstrom zwischen verschiedenen Entscheidungs- und
Umsetzungsinstanzen auftun. Aus diesen Überlegungen hat sich das **Flight-Levels-Modell**
entwickelt.

**Das Flight-Levels-Modell ist eine Denkhilfe, um zu verstehen, *wo* in einer Organisation
was getan werden muss, um die gewünschten Resultate und/oder Verbesserungen zu erzielen.**

Dazu ist es nicht immer notwendig, Rollen und Verantwortungen neu zu verteilen oder
originelle Organisationsstrukturen zu schaffen. Die Frage lautet vielmehr: An welchen
Stellen in den Wertströmen können wir ansetzen, um mit möglichst wenig (struktureller)
Veränderung eine substanzielle Verbesserung zu erreichen? Um diese Frage beantworten zu
können, werden die in einer Organisation existierenden Arbeitssysteme mit ihren
Abhängigkeiten sowie die in den einzelnen Arbeitssystemen gemanagten Arbeiten und deren
Wege abgebildet, die sie in und zwischen den Arbeitssystemen zurücklegen.

> **Hier noch eine Bitte des Erfinders:** Bitte ziehen Sie das Flight-Levels-Modell nicht
> dazu heran, um ein Unternehmen neu zu strukturieren oder nach Flight Levels auseinander
> zu dividieren (à la »Wir wollen das Spotify-Modell«)!
>
> **Das Flight-Levels-Modell ist weder ein Organisationsmodell noch ein Maturitätsmodell
> noch ist es eine Hierarchie – Flight Level 3 ist also nicht dreimal besser oder wichtiger
> als Flight Level 1.**

In der Luftfahrt beschreibt ein Flight Level, **wie hoch** ein Flugzeug fliegt. Je nach
Flughöhe verändert sich der Detailgrad, mit dem man eine Landschaft wahrnehmen kann. Fliegt
man sehr hoch, sieht man kilometerweit in die Ferne, gleichzeitig erkennt man aber am Boden
nicht mehr jede Einzelheit. Fliegt man umgekehrt eher niedrig, kann man sozusagen fast in
die Schlafzimmerfenster hineinschauen, allerdings erkennt man zum Beispiel die
flächenmäßige Ausdehnung einer Stadt nicht mehr.

**Jede Flugebene** hat also ihre Vorteile und **Besonderheiten**, sie hat aber auch ihre
**Einschränkungen** im Umfang dessen, was die Personen an Bord erkennen können.

**Das gleiche Prinzip** finden wir in Organisationen: Ein Flight Level ist hier als
Planungs- und Gestaltungshorizont zu verstehen. Dementsprechend unterscheiden wir drei
Flight Levels, die nicht hierarchisch zu verstehen sind: die **strategische Ebene**, die
**koordinative Ebene** und die **Teamebene**. Ein umfassendes und gleichzeitig detailliertes
Bild über die Performance von verschiedenen Wertströmen in einer Organisation ergibt sich
erst, wenn die Sichtweiten dieser drei Flugebenen zusammengeführt, aufeinander abgestimmt
und koordiniert werden. Deshalb lässt sich durch die Anwendung der Denkweise des
Flight-Levels-Modells herausfinden, wo innerhalb der Organisation welche Hebel für die
Verbesserung liegen.

Es ist daher nicht wichtig, mit welchen Methoden zum Beispiel einzelne Teams oder
Abteilungen arbeiten. Wichtig ist, wie **die Kommunikation und die Kooperation** zwischen
den Flight Levels sowie zwischen verschiedenen Einheiten auf den einzelnen Levels gestaltet
werden. Schafft man hier Verbesserungen, beginnt sich die gesamte Wertschöpfung zu
optimieren – und das ist ja schließlich **unser Ziel**.

Der eigentliche Antrieb der Verbesserung sind nicht die drei Flight Levels selbst, sondern
**fünf Aktivitäten**, die in einem kontinuierlichen Zyklus auf und zwischen den Flight
Levels eingesetzt werden. **Diese fünf Aktivitäten sind sozusagen die
Flugverkehrskontrolle**: Damit lässt sich die Bewegung von Initiativen durch den Wertstrom
koordinieren und verbessern.

---

<!-- S. 7-12 -->
## 2 Fünf Aktivitäten

Diese fünf Aktivitäten sollten auf allen Flight Levels kontinuierlich angewendet werden,
wenn das Ziel nicht »agile Teams«, sondern »echte Business-Agilität« lautet.

### 2.1 Die Situation visualisieren

In der Wissensarbeit haben wir das Problem, dass im wahrsten Sinne des Wortes schwer
greifbar ist, was eigentlich getan wird. Am Ende eines Arbeitstages steht nicht irgendwo
ein halbfertiger Tisch herum, vielmehr existiert in irgendeinem Kopf eine Idee, Dokumente
schwirren durch die Cloud oder ein Stück Code wartet auf einem Rechner auf seine
Weiterbearbeitung. Was nicht sichtbar ist, sorgt sehr oft für Missverständnisse, und die
Koordination voneinander abhängiger Personen, Teams oder Abteilungen ist wesentlich
schwieriger.

Bevor wir überhaupt an Lösungen denken, sollte daher **die momentane Situation** für alle
Beteiligten **sichtbar werden**. Die Idee ist, ein Abbild der Arbeit und Tätigkeiten zu
schaffen, die verändert werden sollen. So können die beteiligten Personen besser verstehen,
wie diese Arbeiten und Tätigkeiten durch die Organisation laufen und welche
Wechselwirkungen es zwischen den einzelnen Abteilungen und Teams in der Organisation gibt.

Diese Visualisierung passiert in der agilen Welt hauptsächlich durch Boards – erlaubt ist
aber alles, was eine Situation gut darstellen und besser begreifbar machen kann.

### 2.2 Fokus schaffen

Zum Glück werden Menschen immer mehr Ideen haben, als sie tatsächlich umsetzen können. An
allen Ideen gleichzeitig zu arbeiten, bringt aber nicht viel, denn dann dauert alles
insgesamt länger. Damit etwas innerhalb eines akzeptablen Zeitrahmens fertig werden kann,
müssen wir uns jeweils auf eine bestimmte Menge an Arbeit fokussieren und diese **Schritt
für Schritt umsetzen.** Das hilft auch dabei, Abhängigkeiten und Planungsunsicherheiten
aufzulösen. Erst wenn etwas abgeschlossen ist, beginnen wir mit etwas Neuem – denn:
Arbeiten kostet Geld. Arbeit abzuschließen, bringt Geld.

### 2.3 Regelmäßig kommunizieren

Die Pointe am Management von Abhängigkeiten, zum Beispiel mithilfe von Produktboards, sind
nicht die Boards selbst. Das Wichtige daran ist, dass die richtigen Leute miteinander über
das reden, was sie am Board sehen. Mit »regelmäßig kommunizieren« meinen wir nicht den
gepflegten Tratsch beim Kaffeekränzchen. Der Grund, warum wir Begriffe wie Meeting,
Standup etc. bewusst nicht verwenden, ist der folgende: Meistens existiert in Unternehmen
nicht das Problem, dass es zu wenige Meetings gibt. Das Problem besteht vielmehr darin,
dass in diesen Meetings entweder nichts Substanzielles gesagt wird, keine Entscheidungen
getroffen werden oder nach dem Meeting alle Teilnehmenden genau so schlau sind wie davor
(**das nennt sich dann wohl »ergebnisneutral«**). Deshalb lehnen wir es inzwischen ab,
Menschen vorzuschreiben, welche Meetings sie wann und wie lange abhalten müssen, um agil
zu sein. Das verbessert nämlich nicht zwangsläufig das Ergebnis. Echte Kommunikation
bedeutet, dass es auf einen Input auch eine Antwort gibt – es findet also ein Austausch
statt. Im Idealfall beschäftigen sich die Beteiligten gemeinsam mit diesen Informationen,
um gegebenenfalls daraus Handlungen abzuleiten.

Wirklich wichtig sind also der **Inhalt und das Ergebnis** von Gesprächen, nicht deren
Menge oder Bezeichnung. Ein paar Prinzipien haben sich für wirksame Kommunikation bewährt:

- **Machen wir es kurz, aber dafür öfter.** Das klingt nach einem unanständigen Angebot,
  heißt aber lediglich: Wenn Menschen, die ein gemeinsames Ziel haben, in kürzeren
  Abständen miteinander kommunizieren, gibt es auch früher Feedback und sie können
  schneller auf Probleme reagieren. Je öfter diese Gespräche stattfinden, desto kürzer
  können sie auch sein bzw. sie werden von selbst irgendwann kürzer, weil die Beteiligten
  lernen, das Wichtige auf den Punkt zu bringen und Entscheidungen zu treffen.
- **Kommuniziere vorausschauend.** »Wir haben doch schon vor drei Wochen angefangen und
  sind mit unserem Teil fertig. Jetzt müsst ihr übernehmen!« Wenn solche Sätze fallen,
  kommt meistens keine Freude auf, denn sie bedeuten Stress. Überall dort, wo Menschen
  oder Teams in einem System gemeinsam an einer Sache arbeiten (müssen), sollte
  vorausschauend und für andere mitdenkend kommuniziert werden. Bevor zum Beispiel ein
  Team mit seinem Anteil an einem Produkt loslegt, sollten alle anderen Teams darüber
  Bescheid wissen und genügend Zeit haben, um sich entsprechend organisieren zu können.
  Möglicherweise stellt sich heraus, dass der Startzeitpunkt nicht ideal ist und es dadurch
  im weiteren Prozess zu Verzögerungen kommen würde. Es ist eine Sache der Höflichkeit,
  den anderen Beteiligten offen zu sagen: »Das haben wir vor und das kommt auf uns zu …«

Reden kann man natürlich über vieles, wenn der Tag lang ist. Aber welche sind nun die
wichtigsten Gespräche, die auf und zwischen den einzelnen Flight Levels geführt werden
sollten, wenn eine Organisation lernen, sich verbessern und irgendwann sogar agil sein
will? Bis jetzt haben wir **vier wesentliche Fragen** ausgemacht, die dabei helfen können,
passende Kommunikationsformate und -inhalte zu finden:

- **Kommunikation zur Organisation:** Wie schaffen wir eine Koordination in kurzen
  Schleifen?
- **Kommunikation zum Inhalt:** Wie entscheiden wir, was wir tun?
- **Kommunikation zu Zuständigkeiten und Abläufen:** Wie entscheiden wir, wie wir etwas
  tun?
- **Kommunikation über die Qualität:** Wie werden wir besser?

Sehen Sie diese Fragen bitte nicht dogmatisch! In den Kontexten vieler Unternehmen, die wir
bis jetzt kennenlernen durften, sind sie sehr sinnvoll. Aber es sind nicht die einzig
erlaubten Fragen und es sind auch nicht die einzig möglichen. Welche Fragen und welche
Kommunikationsformate in weiterer Folge sinnvoll sind, hängt vom jeweiligen Unternehmen ab.
Menschen in der Luftfahrtindustrie sehen es zum Beispiel gerne, wenn Flugzeuge in der Luft
bleiben – daher gibt es dort viele Kommunikationsformate rund um das Thema Risiko.

Ob in einem Unternehmen weiterhin der Begriff »Meeting« als Bezeichnung für regelmäßige,
ergebnisorientierte Gespräche verwendet wird, ist uns persönlich egal. Es geht nicht darum,
Meetings abzuschaffen. Wichtig ist, dass diese regelmäßigen Gespräche einen erkennbaren
Wert generieren, denn Sauerstoff in Stickstoff umzuwandeln, sollte ja nicht der einzige
Sinn von Gesprächen sein.

Damit alle Beteiligten das gleiche Verständnis von einem bestimmten Kommunikationsformat
haben, hat es sich bewährt, dass die Eingeladenen und gegebenenfalls wichtige Stakeholder
die zentralen Merkmale gemeinsam definieren und in einem Canvas (fancy Wort für
»Formular«) festhalten. Dadurch wird klar, welchen Zweck ein Kommunikationsformat hat und
welche Entscheidungen dabei getroffen werden sollen. Das ist auch nichts anderes als eine
Visualisierung. Wenn sich die Regeln ändern, wird der Inhalt des Formulars – sorry: Canvas
– entsprechend aktualisiert.

### 2.4 Den Fortschritt messen

»Wenn Sie mit Methode Simsalabim arbeiten, springen Ihre Teams drei Mal so hoch und fünf
Mal so weit – und das in der Hälfte der Zeit!« Agile Frameworks kommen mit allerlei
Versprechen daher. Dadurch entsteht der Eindruck, es müsse wirklich alles und jedes
gemessen werden, um den totalen Überblick zu haben – denn nur so kann man angemessen auf
den Markt reagieren, oder nicht?

Für manche Unternehmen ist aber zum Beispiel die Messgröße »Vorhersagbarkeit«
nebensächlich. Bei sipgate, einem innovativen Telekommunikationsunternehmen in
Deutschland, spielt zum Beispiel die Durchlaufzeit die Hauptrolle. Dort wurde uns gesagt:
»Eh super, wenn wir herausfinden, wann unsere Arbeit fertig ist. Aber so wichtig ist das
für uns nicht, denn wir haben drei Termine im Jahr: Weihnachten – das können wir nicht
verschieben – und zwei Messen. Bis dahin sollten wir etwas Fertiges haben.«

Messungen sind nichts anderes als eine **ständige Feedbackschleife**: Sie zeigen, ob wir
einem Ziel nähergekommen sind oder nicht, ob wir uns verbessert oder verschlechtert haben.

Sinnhaftigkeit und Aussagekraft von Messungen hängen aber davon ab, um welches Unternehmen
und welchen Kontext es sich handelt. Was als Verbesserung bzw. Fortschritt betrachtet wird,
ist für jede Organisation höchst individuell. **Deshalb gibt das Flight-Levels-Modell keine
spezifischen Messungen vor.**

Für aussagekräftige Messungen sollte nicht ein Hype die wichtigste Grundlage sein.
Wirkliche Kraft hat das im **Kommunikationsprozess** einer Gruppe ausgehandelte, gemeinsame
Verständnis darüber, was warum wie gemessen werden soll. Angenommen, das gemeinsame Ziel
lautet: bessere Qualität. Wenn jemand dieses Ziel in die Runde wirft, werden mit ziemlicher
Sicherheit alle zustimmend nicken. Sobald aber gefragt wird: »Woran erkennen wir, dass sich
die Qualität verbessert hat?«, wird ein Raunen durch die Menge gehen. Ist die Qualität
gestiegen, wenn sich die Anzahl der Fehlerbehebungen verringert hat? Merken wir es am
positiven Feedback der Kundinnen? Oder an der sinkenden Zahl der Anrufe bei der
Support-Hotline? Indikatoren für bessere Qualität gäbe es viele. Welche aber wirklich
**aussagekräftig** und **relevant** sind, muss im Gespräch immer wieder aufs Neue definiert
werden.

Noch schwieriger wird es bei einem riesigen Heißluftballon namens »Agilität«, der durch
unzählige Erwartungen und Interpretationen aufgeblasen wird. Für den einen bedeutet
Agilität, schneller an den Markt zu liefern – ein anderer findet das Umarmen von Bäumen
agil. Bevor alle anderen in der Organisation mit einer verwirrenden, vom Zaun gebrochenen
Transformation behelligt werden, sollte in diesem breiten Spektrum von Definitionen erst
einmal ein gemeinsames Verständnis gefunden werden: **»Woran bemerken wir in drei Monaten,
ob unsere Organisation agiler geworden ist?«**

### 2.5 Verbesserungen durchführen

»Wir könnten ja mal schauen, ob …« – über Verbesserungen kann man viele schöne Gespräche
führen, aber: The proof of the pudding is in the eating. Sprich: Verbesserung passiert nur,
wenn tatsächlich etwas getan wird. Deshalb ist es uns Menschen von der Flight Levels
Academy so wichtig, das Verbessern als Tätigkeit in einem ständigen Kreislauf explizit
hervorzuheben. Verbesserung ist ein integraler Bestandteil der Arbeit, für die auch
Kapazitäten bzw. Möglichkeiten innerhalb des jeweiligen Arbeitsmodells vorgesehen sein
sollten.

---

<!-- S. 13-17 -->
## 3 Drei Ebenen

Was ist jetzt so einzigartig an diesen fünf Aktivitäten? Im Grunde sind sie nichts Neues:
Ähnliche Kreisläufe liegen auch Scrum, Kanban, Lean Startup oder Design Thinking zugrunde,
wobei sie bei diesen einzelnen Methoden immer mit den spezifischen Denkweisen und
Rahmenwerken verbunden sind. Meistens sind sie auch auf die Arbeit in einem einzelnen Team
beschränkt.

Der wichtige Punkt für uns ist, dass die Aktivitäten selbst völlig unabhängig davon sind,
nach welcher »Methode« gearbeitet wird. Es ist ganz einfach ein Kreislauf, der zur
Verbesserung führt. Das Besondere im Zusammenhang mit dem Flight-Levels-Modell ist nun,
dass dieser **Kreislauf auf allen drei Flight Levels** angewendet wird, damit alle
Planungshorizonte und Aktivitäten aufeinander abgestimmt werden und die gesamte
Organisation durch das Ziehen in eine gemeinsame Richtung über kurz oder lang mehr
Business-Agilität erreicht (und nicht nur agile Teams produziert). Schauen wir uns also an,
was auf den einzelnen Flight Levels überhaupt passiert.

### 3.1 Flight Level 1: operative Ebene

Fangen wir **bodennah** an. Die erste Flugebene gehört den Teams, die die tägliche Arbeit
erledigen – in der Produktentwicklung, im Marketing oder Sales, im Kundenservice, in der
HR- oder Rechtsabteilung etc. Ein Team kann sich oder besser gesagt seinen individuellen
Arbeitsfluss optimieren, indem es konsequent die fünf Aktivitäten einsetzt.

**Mit welchen Methoden** ein Team arbeitet, um zum Beispiel Produkte zu entwickeln oder
Dienstleistungen zu erbringen – ob agil oder anders –, ist völlig egal, denn das
Flight-Levels-Modell ist **methodenagnostisch**. In einem Unternehmen gibt es meistens
mehr als ein Team und jedes bevorzugt eine andere Arbeitsweise. Man wird in ein und
derselben Organisation daher **verschieden gestaltete Flight-Level-1-Systeme** antreffen.
Wir können also an dieser Stelle keine Vorschriften dazu machen, wie die fünf Aktivitäten
auf Flight Level 1 auszusehen haben. Ein Team von Juristinnen muss in seinen Abläufen und
bei der Wahl des Fokus wahrscheinlich auf andere Dinge achten als ein Team von
Maschinenbauerinnen oder Softwareentwicklerinnen.

Um einen **Kundenwert** zu generieren, müssen diese Team-Einzelsysteme jedoch meistens in
irgendeiner Art und Weise kooperieren – »**no team is an island**«. Ignoriert man das und
richtet man seine Optimierungsbemühungen nur auf die einzelnen Teams, besteht die Gefahr
der Suboptimierung: Ja, man bekommt ein hoch performantes Team. Allerdings bleibt die
Gesamtleistung der Organisation – also die **Performance** aller Teams zusammengenommen –
im besten Fall gleich. Viel wahrscheinlicher wird sie sogar **sinken**.

Willkommen in der Welt des Systemdenkens! Lokale Optimierung führt meist zu globaler
Suboptimierung. Der Grund sind die **Abhängigkeiten**: Es werden immer welche übrig
bleiben. Diese Abhängigkeiten müssen gemanagt werden – das ist die Aufgabe von **Flight
Level 2**.

### 3.2 Flight Level 2: Koordination

Damit ein **Produkt oder eine Leistung** entstehen bzw. geliefert werden kann, müssen in
der Regel mehrere Teams interagieren, um etwas erreichen zu können. Meistens besteht
zwischen diesen Teams bereits ein reger Austausch, nur sollten diese Interaktionen auch
zielführend sein. Die Kunst liegt somit darin, die richtigen Teams (Flight Level 1) zur
richtigen Zeit an der richtigen Sache arbeiten zu lassen. **Auf Flight Level 2 zoomen wir**
daher aus dem einzelnen Team heraus und **visualisieren den Wertstrom**, also die Art und
Weise, wie ein Produkt bis zu seiner Lieferung an die Kundinnen Form annimmt.

Im besten Fall handelt es sich dabei um eine einfache Ende-zu-Ende-Abbildung des
Wertstroms, **in der Realität treffen wir aber auf drei Varianten von
Flight-Level-2-Systemen:**

1. **Koordination mehrerer Teams** — Ein Online-Händler möchte den Handel mit
   Gebrauchtwagen im Internet vereinfachen. In die Entwicklung und Umsetzung seiner
   Plattform sind sechs Teams involviert. In regelmäßigen Konversationen zwischen
   Vertreterinnen der einzelnen Teams wird geklärt, wer sich mit wem, wann, an welcher
   Stelle und wie abstimmen muss, damit für die Kundinnen Wert entstehen kann. Wieder sind
   wir methodenagnostisch unterwegs, denn für die Koordination ist es völlig irrelevant,
   auf welche Weise die einzelnen Teams ihre Lieferungen erbringen.
2. **Ende-zu-Ende-Teilfluss** — Selbst wenn mehrere Teams zusammenarbeiten, muss das noch
   keine Ende-zu-Ende-Koordination im Sinne eines gesamten Wertstroms bedeuten. Ganz
   einfach deshalb, weil manchmal mehrere Teams gemeinsam nur einen in sich geschlossenen
   Ausschnitt eines sehr viel größeren Produkts oder Projekts umsetzen. Umgekehrt kann aber
   sehr wohl ein einziges Team ein vollständiges Flight-Level-2-System darstellen, wenn es
   die Ende-zu-Ende-Verantwortung für ein ganzes Produkt hat. Das ist meistens in kleinen
   Organisationen der Fall.
3. **Koordination mehrerer Flight-Level-2-Systeme** — Je größer eine Organisation ist,
   desto mehr Wertströme gibt es natürlich – zum Beispiel in Form verschiedener Produkte
   und Services. Dementsprechend wird man in einem größeren Unternehmen in der Regel mehr
   als ein Flight-Level-2-System sehen und zwischen diesen Wertströmen können wiederum
   Abhängigkeiten existieren. Wird zum Beispiel in einem Produkt etwas verändert, muss
   häufig auch etwas in einem anderen Produkt geändert werden. In solchen Fällen werden die
   verschiedenen Boards, auf denen Wertströme visualisiert werden, physisch oder virtuell
   zusammengeführt, um die Abhängigkeiten sichtbar zu machen und dadurch managen zu können.
   Hier entsteht also ein **operatives Portfoliomanagement**.

### 3.3 Flight Level 3: strategisches Portfoliomanagement

Für ein Unternehmen gibt es im Idealfall eine Strategie – also eine Vorstellung davon,
welche Stellung das Unternehmen in einem Markt (oder verschiedenen Märkten) langfristig
einnehmen will und wie die Menschen in der Organisation dieses Ziel gemeinsam erreichen
können. Üblicherweise werden das Entwickeln und Festlegen der Strategie als Aufgaben des
Topmanagements betrachtet. Nur bringt die schönste Strategie nichts, wenn lediglich eine
Seite eine genaue Vorstellung davon hat, wohin die Reise gehen soll. **Auf Flight Level 3
geht es daher im Wesentlichen um die Antwort auf drei Fragen:**

1. Wie sieht unsere Strategie aus?
2. Welche Outcomes wollen wir in unterschiedlichen Zeithorizonten – zum Beispiel nach drei
   Jahren, in einem Jahr und in den nächsten drei Monaten – erreichen?
3. Welche Aktionen können wir daraus für die unmittelbare Zukunft ableiten (in Märkte
   eintreten, Produkte launchen, Initiativen starten etc.)?

Das sind Fragen, die man sich in regelmäßigen Abständen stellen sollte – und zwar sollte
sich das Topmanagement diese Fragen nicht allein stellen. Für die Beantwortung dieser
Fragen müssen wechselseitige Verbindungen und kontinuierliche Kommunikation zwischen allen
drei Flight Levels – Strategie, Koordination und operative Umsetzung – hergestellt werden.
Das am Ende eines Jahres oft stattfindende nachträgliche Hineinpressen der getanen Arbeit
(**Backward Mapping**) in die strategischen Vorgaben fällt damit weg. An dessen Stelle
tritt das **»Forward Mapping«** – das gemeinsame Planen überschaubarer Schritte und der
laufende Check der Ergebnisse in kurzen Abständen.

> **Was ist nicht Teil von Flight Level 3?**
> Auch wenn die Vision und die Strategie wichtige Ausgangspunkte sind: Ihre Ausarbeitung
> selbst ist nicht Teil des Flight-Levels-Modells. Will heißen: Zwar beschäftigt uns die
> Frage, wie die Strategie operationalisiert wird, aber wir befassen uns nicht mit dem
> Finden und der Formulierung der Strategie selbst. Ob ein Unternehmen als Nächstes den
> lateinamerikanischen oder den asiatischen Markt erobern soll, lässt sich mit dem
> Flight-Levels-Modell nicht beantworten. Wenn aber die strategische Entscheidung getroffen
> wurde, hilft das Denken in Flight Levels bei der Umsetzung der strategischen Teilziele.

---

<!-- S. 18-22 -->
## 4 Abläufe zwischen den Flight Levels

Gut, Sie wissen also, was mit den Flight Levels gemeint ist. Aber wie schaffen Sie es nun,
die Abläufe zwischen den Flight Levels zu managen und zu verbessern? Dafür sind **drei
Schritte** nötig:

1. **Definition der Arbeitssystem-Topologie:** Welche Arbeitssysteme gibt es derzeit in der
   Organisation? Wie sind diese Systeme miteinander verbunden?
2. **Definition der Flight Items:** Welche Arbeit wird in welchem Arbeitssystem erledigt?
3. **Beschreibung der Flight Routes:** Wie bewegt sich die Arbeit durch die Arbeitssysteme,
   die wir identifiziert haben?

Topologie, Flight Items und Flight Routes bezeichnen wir als **Flight-Levels-Systemarchitektur**.
Diese sollte visualisiert und durchleuchtet werden, wenn man in einem Unternehmen mit den
Flight Levels arbeiten möchte.

### 4.1 Arbeitssystem-Topologie

Die Flight Levels sind eine **Denk- und Kommunikationshilfe, in deren Mittelpunkt die
Verbesserung der Ablauforganisation steht** und die deutlich machen soll, wo welche
**Hebel** für die Lösung eines Problems zur Verfügung stehen. Mit einer Darstellung der
Flight Levels wie in der Abbildung auf Seite 17 kommen Sie bei dieser Frage in der Realität
nicht weiter, deswegen noch einmal die Warnung:

Bei dem hübschen Flight-Levels-Poster handelt es sich **nicht** um ein idealtypisches,
Flight-Level-konformes Organigramm! Im echten Leben ist die Sache etwas herausfordernder:
Zuerst müssen wir herausfinden, welche Arbeitssysteme es in einer Organisation zum
aktuellen Zeitpunkt überhaupt gibt. Das heißt, wir bilden Schritt für Schritt die
sogenannte **Topologie** ab: Wir untersuchen die Organisation auf existierende
Flight-Level-1-, Flight-Level-2- und Flight-Level-3-Systeme. Besonders wichtig ist im
Anschluss die Frage, welche Abläufe und Abhängigkeiten es derzeit zwischen diesen Systemen
gibt. Daraus können wir erkennen, wie sie miteinander verbunden werden könnten, um mehr
Business-Agilität zu erreichen.

> **Was ist ein Arbeitssystem bzw. Flight-Levels-System?**
> Mit einem Arbeits- oder Flight-Levels-System meinen wir einen Ausschnitt der
> Organisation, in dem die fünf Aktivitäten angewendet werden. Auf die Abbildung auf der
> nächsten Seite bezogen, wird so ein Ausschnitt durch ein Kästchen in der Topologie
> repräsentiert.
>
> **Was ist eine Arbeitssystem-Topologie?**
> Eine Topologie bezeichnet im Allgemeinen die Position und Beziehung von Objekten
> zueinander. Die Arbeitssystem-Topologie ist eine Visualisierung, die abbildet, welche
> Flight-Levels-Systeme in einer Organisation für die Erledigung von Arbeit gebraucht
> werden und wie diese miteinander verbunden sind.

Flight-Level-1-Systeme zu finden, ist recht einfach (aber nicht immer!), denn dabei können
wir uns meistens an den einzelnen Teams orientieren. Flight-Level-3-Systeme berühren immer
die Strategie, also auch hier fällt es grundsätzlich leicht, sie herauszuarbeiten.

**Die größte Herausforderung steckt in der Identifikation der Flight-Level-2-Systeme.**
Hier ist Sorgfalt angebracht, denn genau diese Drehscheiben der Koordination sind der
Schlüssel zur Business-Agilität.

**Beispiel Webplattform für Automobil-Inserate** (S. 20, reales Praxisbeispiel):

- Teams 1–12 (Flight Level 1) arbeiten gemeinsam an der »Core Experience« (Plattform, daher
  Flight Level 2) und müssen sich koordinieren.
- »Business Intelligence« ist eine Mischung aus Flight Level 1 und 2 – auch das findet man
  häufig. Im konkreten Fall war die Plattform »Business Intelligence« kein riesiges System
  mit 50 Leuten oder mehr, sondern eines mit lediglich 15 involvierten Personen in zwei
  Teams. Diese zwei Teams sind zu dem Schluss gekommen, dass es nicht viel Sinn ergibt,
  zwei separate Teamboards und ein weiteres, gemeinsames Board für die Koordination zu
  bauen. Sie verantworten zusammen ohnehin die gesamte Wertschöpfungskette. Also
  koordinieren sich die zwei Teams einfach regelmäßig vor dem Flight-Level-2-Board.
- Bei den unterstützenden Services wie Sales, Marketing, Rechtsabteilung etc. ist es in
  diesem Unternehmen hingegen wieder recht klar, dass es sich um Flight-Level-2-Systeme
  handelt, weil sie jeweils aus einem einzelnen Team bestehen. An diesen Abteilungen zeigt
  sich, dass es bei der Arbeit mit den Flight Levels nicht um einen einzigen Ausschnitt der
  Organisation geht, zum Beispiel um die IT.
- Alle Systeme sind mit der »**Company Wall**« verbunden – dem Ort, an dem die
  Vertreterinnen der Produkte die Abhängigkeiten und die zu erledigende Arbeit
  koordinieren. Die Company Wall ist eine Mischung aus Flight-Level-2- und
  Flight-Level-3-Systemen, denn hier werden auch strategische Informationen gemanagt.

Es geht nicht darum, lustig drauflos ein paar Boards zu bauen. Wichtig ist aber auch: In
puncto Arbeitssystem-Topologien gibt es **kein Richtig oder Falsch**. Man braucht einen
ersten ungefähren Überblick über die bestehende Ablauforganisation. Von diesem Punkt aus
können Topologien (= Abläufe) nach verschiedenen Gesichtspunkten entworfen und durchdacht
werden – bei Bayer wird das zum Beispiel als »**Flight Simulator**« bezeichnet [Flight
Levels Academy 2020], andere bauen auf diese Weise sogar »**virtuelle Organisationen**«.
Ein Tochterunternehmen von Bosch etwa wollte in seinen Abläufen agiler werden, ohne dafür
eine völlige Reorganisation bzw. Transformation anstoßen zu müssen, die innerhalb eines
Konzerngefüges um einiges schwieriger ist [Flight Levels Academy 2021]. Hätte man das
Unternehmen von Grund auf neu organisieren können, dann wäre die Strukturierung nach
Produktteams sinnvoll gewesen – aber das war aufgrund der Gegebenheiten völlige Science
Fiction. Die schlauen Füchse haben aber Folgendes gemacht: Sie haben die Abläufe in ihren
Flight-Level-2-Systemen so gestaltet, als hätte eine Reorganisation stattgefunden. Es gibt
nun einfach ein Board, das einem Produkt entspricht. »Vor« diesem Board kommen virtuell die
Beteiligten aus der ganzen Welt zusammen, um ihre Arbeit am Produkt über die Silos hinweg
zu koordinieren – während alle Beteiligten weiterhin an ihrer Stelle in der
Aufbauorganisation bleiben. **Flight-Levels-Systeme schaffen vorhandene Silos also nicht
ab, aber sie können eine bessere Verbindung zwischen den Silos herstellen.**

Das Ziel ist, die meist unsichtbare Ablauforganisation in den Mittelpunkt zu stellen und
sichtbar zu machen.

### 4.2 Flight Items definieren und Flight Routes beschreiben

Wenn wir wollen, dass sich Strategie und operative Umsetzung über die vorhandenen
Flight-Levels-Systeme hinweg miteinander verbinden, dann stellt sich gleich die nächste
Frage: **Welche Arbeit wird in welchem System gemanagt und/oder koordiniert?**

Diese Arbeit bezeichnen wir supercool als »**Flight Items**«. Zum Beispiel kann die
Übereinkunft lauten, dass sich Flight Level 3 mit der Definition strategischer Outcomes
befasst, Flight Level 2 mit der Koordination von Epics und Flight Level 1 mit der
Umsetzung von daraus abgeleiteten Tasks. Das klingt jetzt sehr einfach. In der Realität
erleben wir es etwas anders: Nur weil alle zu einem Vokabular zustimmend nicken, heißt das
noch lange nicht, dass alle unter den Begrifflichkeiten wirklich dasselbe verstehen. Ein
Klassiker ist das »Epic«: Für die einen ist ein Epic etwas, das in drei Sprints erledigt
ist; für die anderen sind das Projekte, die in der vor-agilen Zeit eine Laufzeit von bis zu
zwei Jahren hatten. Das heißt, für die Flight Items müssen nicht nur Begriffe gefunden
werden – vor allem muss definiert werden, was unter diesen Begriffen genau zu verstehen
ist. Die große Aufgabe ist also nicht so sehr, die Flight Items zu finden, sondern eine
**gemeinsame Sprache** dafür zu entwickeln.

Wenn wir wissen, was sich so durch unsere Systeme bewegt, schließt sich daran noch eine
Frage an: **Wie** bewegen sich die Flight Items durch die einzelnen Systeme? Wir versuchen
also, deren »**Flight Routes**« nachzuvollziehen.

**»Zeig mir deine Flight Routes und ich sage dir, wie deine Organisation tickt!«** Was
bedeutet es zum Beispiel, wenn Flugrouten größtenteils von der strategischen zur operativen
Ebene, aber nie von der operativen zur strategischen Ebene weisen? Es könnte sein, dass in
diesem Fall eine Gruppe sehr kluger Menschen alles weiß und dem Rest der Organisation am
liebsten Anweisungen erteilt. Gibt es hingegen Routen, die von der operativen auch wieder
zurück zur strategischen Ebene verlaufen, dann werden anscheinend Kolleginnen der
koordinativen und der operativen Ebene in die strategischen Entscheidungen eingebunden und
es findet ein Abgleich zwischen der Strategie und den Ergebnissen der Arbeit statt.
Verlaufen die Flugrouten hauptsächlich durch Flight-Level-2- oder Flight-Level-1-Systeme,
dann ist das meistens ein Zeichen dafür, dass viele Entscheidungsbefugnisse und
Verantwortungen an die ausführenden Stellen gegeben werden.

Anhand der Flugrouten lassen sich Rückschlüsse über die Funktionsweise einer Organisation
ziehen. Leider kennen viele Organisationen ihre Flugrouten und deren Auswirkungen auf die
Abläufe überhaupt nicht. Das **Sichtbarmachen** hilft dabei, die **Störungen zu erkennen und
zu verstehen**, die durch ungünstige Flugrouten entstehen.

Nur weil an jeder Wand ein Board zu finden ist, heißt das noch lange nicht, dass sich an
der Wertschöpfung für den Kunden etwas geändert hat. Zu oft wird das Board an der Wand
nämlich zum Brett vor dem Kopf.

*(Anmerkung für das Tool: „People as Routers"/„Stop using people as routers" kommt in
diesem Buch an keiner Stelle vor. Das nächstliegende Buch-Konzept mit ähnlichem
Diagnose-Charakter sind die Flight Routes oben — nicht Personen, sondern
Systemarchitektur/Boards verbinden die Ebenen.)*

---

<!-- S. 23-33 -->
## 5 Flight Levels einführen

Falls Sie diese Broschüre bis hierher gelesen haben, wissen Sie nunmehr alles Wesentliche
über das Denk- und Kommunikationsmodell der Flight Levels: von der Grundidee über die fünf
Kernaktivitäten auf drei Ebenen bis hin zu den Abläufen zwischen den einzelnen Ebenen. Doch
bevor es so richtig losgeht, müssen noch ein paar andere Fragen geklärt werden: Etwa was
genau man eigentlich verbessern will, wie man den dafür notwendigen Veränderungsprozess
gestaltet oder welche Auswirkungen die Flight Levels auf die Führungs- und
Unternehmenskultur haben werden. Die technische Seite des Systemdesigns ist eben nur eine
Seite der berühmten Medaille. Sie ist untrennbar mit der sozialen Seite verbunden, ohne die
eine Organisation nicht ins Fliegen kommen kann. Die spiegelartige Verbindung zwischen der
technischen und der sozialen Perspektive zeigt sich nicht zuletzt darin, dass es auch in
Sachen Veränderungsmanagement **fünf Kernaktivitäten** gibt:

1. Ist-Situation erfassen
2. Verbesserungsfokus setzen
3. Führungskoalition schaffen
4. Engagement fördern
5. Veränderung agil gestalten

*(Hinweis: Dies sind die fünf Kernaktivitäten des Change-Prozesses — nicht zu verwechseln
mit den fünf Kernaktivitäten des Flight-Levels-Systems selbst aus Kapitel 2. Das
Diagramm auf S. 32/33 bildet beide Fünfer-Sets als Etappen-Übersicht übereinander ab; dort
taucht „Agile Interaktionen etablieren" als Label für die operative Phase der Aktivität
„Regelmäßig kommunizieren" auf — siehe unten.)*

### 5.1 Ist-Situation erfassen

Was muss beachtet werden, um mit den Flight Levels gut in Richtung Business-Agilität
abheben zu können? Welche Voraussetzungen sollte man dafür sicherstellen? Wie gewinnt man
Mitarbeitende wie beispielsweise Führungskräfte für diese Reise? Und was macht man, wenn
die Reisegruppe 30, 50, 100 oder noch mehr Leute umfasst? Das sind einige der großen
Fragezeichen, wenn Sie die Flight Levels praktisch anwenden wollen.

Das traditionelle Change Management liefert darauf klare Antworten: Definieren Sie, wie
Ihre Arbeitsprozesse aussehen sollen, entwerfen Sie eine Roadmap mit einer genauen
Schrittfolge, beauftragen Sie eine Projektmanagerin, die für die plangetreue Umsetzung
sorgt, und wickeln Sie das Ganze generalstabsmäßig ab. Die hohe Rate an gescheiterten
Veränderungsinitiativen und die grassierende Veränderungsmüdigkeit der Mitarbeitenden
dokumentieren allerdings, dass man mit diesem klassischen Rezept nicht allzu weit kommt.
Umso weniger, wenn es um echte Business-Agilität geht.

Das gute alte Prinzip »Drink your own champagne« (für Freunde des Rustikalen: »Eat your
own dogfood«) weist mit Nachdruck darauf hin, dass der Weg zu unternehmensweiter Agilität
agil gestaltet werden sollte. Zudem empfiehlt es sich, nicht mit idealisierten
Soll-Prozessen zu starten, sondern mit der Ist-Situation. Wie wird derzeit gearbeitet? Was
läuft dabei gut? Was läuft nicht gut? Und was sollte vordringlich verbessert werden?

Es liegt nahe, diese Fragen mithilfe agiler Interaktionen zu beantworten. Dafür wurde
einst das Format der Retrospektive entwickelt, das längst zum Standardrepertoire vieler
Teams gehört. Selbstverständlich kann man auch Einzelinterviews mit ausgewählten
Stakeholdern führen. Sofern die Teams bereits agil arbeiten, könnten ebenso gut die
Ergebnisse der verschiedenen Retrospektiven zusammengeführt werden. Sie könnten aber auch
sozusagen aufs Ganze gehen und Delegierte aus den unterschiedlichsten Teams,
Fachbereichen und Hierarchiestufen zu einer gemeinsamen Standortbestimmung einladen.
Einerseits wird damit auf den direkten Austausch unterschiedlichster Stakeholder des
Arbeitssystems gesetzt — was, wie die Erfahrung zeigt, oft zu deutlich anderen
Erkenntnissen führt. Und andererseits wird von Anfang an eine Kultur agiler Interaktionen
gefördert, um den vielzitierten ganzen Elefanten bewusst aus verschiedenen Perspektiven zu
betrachten.

Wenn Ihnen dieser Elefant zu groß ist, dann starten Sie erst einmal im Kleinen, indem Sie
die eigene Sicht mit der ausgewählter Kolleginnen abgleichen. Was sehen diese ähnlich? Was
unterschiedlich? Und wo verspüren Sie den stärksten Zug in Richtung gemeinsamer
Verbesserung? Last, but not least können Sie hierfür natürlich auch die Unterstützung
eines agilen Coaches in Anspruch nehmen. Mit professionellen Fragen kann ein solcher Coach
das »laute Denken« fördern, Resonanz auf Ihre Antworten zur Verfügung stellen und
zusätzliche Blickwinkel eröffnen.

### 5.2 Verbesserungsfokus setzen

Die umsichtige Klärung der unternehmerischen Herausforderungen ist es auch, was der Reise
in Richtung Business-Agilität Orientierung gibt. Anders als im klassischen Change
Management zielt man mit den Flight Levels eben nicht auf vordefinierte Idealzustände ab,
sondern auf die für die jeweilige Situation maßgeschneiderte Lösung eines aktuellen
Geschäftsproblems. Die Verkürzung der Time-to-Market, eine bessere Balance zwischen
Betrieb und Neuentwicklung, die Senkung der Kosten durch eine höhere Flusseffizienz oder
die Förderung innovativer Produkte und Services sind diesbezüglich Klassiker.

> Agiler zu werden, ist im Übrigen keine Business Challenge. Dass Agilität gerade in Mode
> ist und sowieso irgendwie zur Digitalisierung dazu gehört, sollte nicht der primäre
> Beweggrund sein. **Agilität ist ein Mittel, kein Zweck** — was leider oft genug
> verwechselt wird. Nehmen Sie sich also ausreichend Zeit, um ein klares »Wozu« zu
> formulieren. Ihre Verbesserungsinitiative und die daran beteiligten Leute werden es
> Ihnen danken!

### 5.3 Führungskoalition schaffen

Wenn man die aktuelle Situation angemessen erfasst und einen Verbesserungsfokus gesetzt
hat, ist schon einmal einiges erreicht. Neben einem klaren Fokus für die angestrebte
Verbesserung braucht es zumindest einen Sponsor, der für die Initiative einsteht, sowie
engagierte Leute, die sie auf agile Weise umsetzen. »You'll never walk alone« könnte das
vom FC Liverpool geborgte Motto für diese Führungskoalition sein, die sich bei der
Einführung von Flight Levels bewährt hat.

**Rollen und Verantwortlichkeiten:**

- **Sponsoren** — Initiieren, leiten und schützen die Veränderung. Setzen den
  Verbesserungsfokus (»Was?«). Erklären die Notwendigkeit (»Warum?«). Setzen die
  Rahmenbedingungen.
- **Stakeholder** — Sind von der Veränderung betroffen. Haben unterschiedliche Interessen.
  Werden angemessen informiert und involviert. Dienen als Resonanzgruppe.
- **Change Agents** — Sind Schlüsselfiguren im System. Gestalten die Verbesserung mit.
  Kommunizieren & moderieren die Veränderung. Agieren als Rollenmodelle.
- **Change-Teams** — Sind crossfunktional besetzt. Definieren das »Wie«. Gestalten den
  agilen Veränderungsprozess. Tun ihr Bestes, um sich selbst zu verbessern.

Die Erfahrung zeigt, dass keine dieser mit unterschiedlichen Verantwortlichkeiten
verbundenen Rollen vernachlässigt werden darf. Vor allem der immer wieder zu beobachtende
Versuch, Flight Levels ohne einen überzeugten Sponsor einzuführen, ist fast immer zum
Scheitern verurteilt. Auf Teamebene (Flight Level 1) mag ein solcher Bottom-up-Ansatz
durchaus zielführend sein. Doch spätestens, wenn es um teamübergreifende Koordination
(Flight Level 2) geht, geschweige denn um das strategische Portfolio (Flight Level 3) oder
eine umfassendere Systemarchitektur (Work Systems Topology), braucht es jemanden in der
Organisation, der die notwendigen Rahmenbedingungen absichern kann.

Ob diese Aufgabe nun ein einzelner Sponsor mit entsprechender Entscheidungsautorität
übernimmt oder mehrere (etwa ein Managementteam) ist nicht so wichtig. Wichtig ist
vielmehr, dass jemand den Fokus der Flight-Levels-Initiative hütet und den Weg zu
messbaren Verbesserungen aktiv mitgestaltet.

Diesbezüglich haben wir sowohl für einzelne Flight-Levels-2- oder Flight-Levels-3-Systeme
als auch für größere Systemarchitekturen die besten Erfahrungen mit einer möglichst
umsichtigen Gruppenzusammensetzung gemacht. Ein bunter Mix von Leuten mit unterschiedlichem
Fachwissen, Erfahrungshorizonten, Führungskompetenzen und Persönlichkeiten modelliert jene
silo- und hierarchieübergreifende Vernetzung, die wir mit Flight Levels insgesamt fördern
wollen. In manchen Fällen ist auch der Sponsor (oder einer der Sponsoren) Teil dieses Mixes
und in vielen Fällen ist außerdem zumindest ein erfahrener Flight Levels Coach dabei, der
als versierter Sparringspartner fachlich wie prozessual unterstützt.

Für das Gelingen einer Verbesserungsinitiative braucht es zwei weitere Veränderungsrollen:
Erstens die weit über das Kernteam hinausgehende Gruppe an Change Agents, die als aktive
Multiplikatorinnen und Botschafterinnen wirken. Und zweitens die noch größere Gruppe an
Stakeholdern, die von der Veränderung in der einen oder anderen Weise betroffen sind und
idealerweise auch etwas von der angestrebten Verbesserung haben. Es empfiehlt sich, diese
beiden Gruppen nicht nur initial zu identifizieren, sondern angemessen zu involvieren.

### 5.4 Engagement fördern

»You'll always fly together« ließe sich das Liverpool-Motto reframen, wenn es um die
konkrete Gestaltung des Veränderungsprozesses mit Flight Levels geht. »During an
organisational change«, halten Daniel Mezick und Mark Sheffield programmatisch fest, »you
need employee engagement or you will fail« [Mezick & Sheffield 2018, S. 106].

Zu den bewährten Interaktionsformaten gehören die bereits erwähnte Retrospektive, die
Arbeit im Change-Team, die Sparringspartnerschaft mit Flight Levels Coaches sowie die
regelmäßige Abstimmung zwischen Veränderungssponsoren und Umsetzungsverantwortlichen. Dazu
gehören jedoch auch Formate, die auf breiterer Ebene für Information, Austausch und
Feedback sorgen. Vor allem dem Format des **Flight-Levels-Einführungsworkshops** kommt
dabei besondere Bedeutung zu. Dieser Workshop verfolgt drei essenzielle Ziele:

1. Eine Vielzahl an Mitarbeiterinnen in einen offenen Austausch zu bringen, um eine
   möglichst breite Sicht auf die aktuellen Stärken und Herausforderungen zu erhalten.
2. Basiswissen zu vermitteln, um die Lösungsansätze der Flight Levels möglichst greifbar
   zu machen.
3. Feedback zur Idee einzuholen, mithilfe von Flight Levels messbare Verbesserungen zu
   erzielen.

### 5.5 Veränderung agil gestalten

Die sorgsame Vorbereitung, Durchführung und Auswertung des Einführungsworkshops stellt eine
wichtige Etappe jeder auf Flight Levels setzenden Verbesserungsinitiative dar – aber nur
eine Etappe auf dem Weg zu echter Business-Agilität. Mit agiler Brille betrachtet, lassen
sich die Etappen als Veränderungsiterationen sehen, die jeweils spezielle Ziele verfolgen:

- Explizite Vereinbarungen zum geplanten Vorhaben: was, wozu, wer, wie
- Die Bildung einer starken Führungskoalition, also die sukzessive Vernetzung von Sponsor,
  Change-Team, Change Agents und Stakeholder
- Die gemeinsame Erkundung des Flight-Levels-Modells, um Wissen zu vermitteln und
  Veränderungsenergie zu schaffen
- Der Entwurf eines ersten Systemdesigns oder einer Systemarchitektur
- Das gemeinsame Inspect & Adapt der erarbeiteten Flight-Levels-Lösungen, um Showstopper zu
  vermeiden und die Führungskoalition für den Betrieb zu stärken
- Der Start des Betriebs, in dem es dann um messbare Verbesserungen geht

Das Etappen-Diagramm (S. 32) ordnet den vier Makro-Phasen — **Explizite Vereinbarungen
(Was? Wozu? Wer? Wie?)** · **Positives Feedback zum Flight Levels Change** · **Flight
Levels Design („Gut genug, um zu starten")** · **Messbare Verbesserungen („im
Flugbetrieb")** — jeweils zu, welche Change-Aktivität (Ist-Situation klären /
Verbesserungsfokus definieren / Führungskoalition schaffen / Engagement fördern) und welche
der fünf System-Aktivitäten aus Kapitel 2 (Situation visualisieren / Fokus kreieren /
**Agile Interaktionen etablieren** / Fortschritt messen / Betreiben & verbessern) in dieser
Phase im Vordergrund steht. **„Agile Interaktionen etablieren" ist in diesem Diagramm die
Bezeichnung für die operative Spätphase von Aktivität 3 („Regelmäßig kommunizieren"), nicht
deren kanonischer Name** — dieser steht in Kapitel 2.3.

Bevor ein entworfenes System tatsächlich in Betrieb genommen wird, empfiehlt sich der
Einsatz eines **»Sounding Board«**: interessierte Leute aus dem erweiterten Kreis der
Change Agents und Stakeholder werden zu einem kurzen Workshop eingeladen, bei dem Resonanz
im Sinne von Kommentaren und Fragen angesagt ist.

Es liegt in der Natur der agilen Sache, dass diese Etappen auch ganz anders aussehen
können. Dementsprechend wichtig ist das gute alte Prinzip der regelmäßigen Prüfung und
Anpassung, das sich wie ein roter Faden durch den gesamten Veränderungsprozess zieht. Agile
Veränderung passiert eben nicht durch das Ausrollen eines einmal erstellten Expertenplans.
Sie steht und fällt vielmehr mit der kokreativen Gestaltung durch die Betroffenen.

---

<!-- S. 34 -->
## 6 Referenzen und weiterführende Literatur

- [Flight Levels Academy 2020] Flight Levels Academy: OKRs and Flight Levels at Bayer – a
  Flight Club with Verena Fischer and Christian Pütter, 7/2020;
  https://www.youtube.com/watch?v=v2Hco-EmC1Y
- [Flight Levels Academy 2021] Flight Levels Academy: Customer Centric Flight Levels
  @Bosch Mobility, 3/2021; https://www.youtube.com/watch?v=z6ETmQKbY5M&t=370s
- [Kaltenecker 2017] Kaltenecker, S.: Selbstorganisierte Unternehmen. dpunkt.verlag, 2017.
- [Kaltenecker 2021] Kaltenecker, S.: Selbstorganisierte Teams führen. 3. Aufl.,
  dpunkt.verlag, 2021.
- [Leopold 2022] Leopold, K.: Agilität neu denken. Mit Flight Levels zu echter
  Business-Agilität. 2. Aufl., dpunkt.verlag, 2022.
- [Mezick & Sheffield 2018] Mezick, D.; Sheffield, M.: Inviting Leadership. FreeStanding
  Press, 2018.

**Weitere Informationen:** Flight Levels Academy (flightlevels.io) · LEANability GmbH
(leanability.com/de) · LOOP Organisationsberatung GmbH (loop-beratung.at)

---

## Kurz-Referenz für den Tool-Abgleich

| Konzept | Buch-Fundstelle | Wörtlicher Kernsatz |
|---|---|---|
| Charakter des Modells | S. 5 (Kasten) | „weder ein Organisationsmodell noch ein Maturitätsmodell noch … eine Hierarchie" |
| FL1 | Kap. 3.1 | tägliche Teamarbeit, methodenagnostisch, Risiko der Suboptimierung isoliert |
| FL2 | Kap. 3.2 | Wertstrom sichtbar machen, im Idealfall Ende-zu-Ende, real 3 Varianten |
| FL3 | Kap. 3.3 | drei Fragen: Strategie / Outcomes je Zeithorizont / Aktionen; Strategie-Findung selbst nicht Teil des Modells |
| Fünf Aktivitäten | Kap. 2 (Titel 2.1–2.5) | Visualisieren · Fokus schaffen · Regelmäßig kommunizieren · Fortschritt messen · Verbesserungen durchführen — „die Flugverkehrskontrolle" |
| Vier Kommunikationsfragen | Kap. 2.3, S. 10 | Organisation/Inhalt/Zuständigkeiten-Abläufe/Qualität |
| „ergebnisneutral" | Kap. 2.3, S. 8f. | Meetings ohne Substanz, ohne Entscheidung |
| Flight-Levels-Systemarchitektur | Kap. 4 | Topologie, Flight Items, Flight Routes |
| Flight Routes | Kap. 4.2, S. 22 | Richtung der Flugrouten zeigt, wie eine Organisation tickt (top-down/bottom-up) |
| „People as Routers" | — | **kommt im Buch nicht vor** |
| Fünf Change-Aktivitäten | Kap. 5 | Ist-Situation erfassen · Verbesserungsfokus setzen · Führungskoalition schaffen · Engagement fördern · Veränderung agil gestalten |
