Hausübung 2.2
=============

**Als Jupyter-Notebook abzugeben**

Aufgabe 1
---------

*2 Punkte*

Folgende zwei Listen sollen in **einer** einzigen Zeile in Python erstellt werden (keine ``;``-Schummelei Erlaubt!):

   - Eine Liste mit den Quadratwurzeln der geraden Zahlen von 0 bis 100

   - Eine Liste mit den Zahlen welche durch 3 teilbar sind von 0 bis 100

*Tipp:* Eine List-Comprehension ist aufgebaut wie folgt: ``[ f(x) for x in collection if p(x)]`` wobei der Teil ab ``if`` weggelassen werden kann und ``f(x)`` auch ``x`` oder ein anderer Ausdruck sein kann.


Aufgabe 2
---------

*1.5 Punkte*

Schreibe eine Dict - Comprehension welche den Zahlen 170-220 (jeweils als Schlüsselwert) den Zustand mit diesem Index aus dem Wonderland-Ergebnis zuweist.

Wenn das Wörterbuch zum Beispiel ``erg`` heißt, soll ``erg[200]`` das Ergebnis des 200. Simulationsschrittes enthalten, ähnlich wie bei der Liste zuvor, nur dass erst ab dem 170. Schritt etwas abgespeichert ist.

Aufgabe 3
---------

*2 Punkte*

Überprüfe die Zeitreihe welche sich aus einer Wonderland-Simulation ergibt.

 - Wie groß ist die **größte** Differenz welche sich in der Wirtschaft zwischen zwei aufeinanderfolgenden Zeitschritten ergibt? (als Absolutwert)

 - Wie groß ist die **größte** Differenz zwischen zwei aufeinanderfolgenden Schritten bei der Umwelt? (als Absolutwert)

*Tipp*: Es eignen sich Slices in Kombination mit der Zip-Funktion.

Aufgabe 4
---------

*3 Punkte*

 - Erstelle eine Generator-Funktion die Zahlen welche durch 3 teilbar sind generiert. Starten soll der so erstellte Generator mit 3.

 - Erstelle eine Generator-Funktion welche Primzahlen generiert. *Tipp:* Fang bei 2 an und speichere alle bereits generierten Primzahlen in einer Liste. Überprüfe bei jeder neuen Zahl ob sie sich durch eine bereits generierte Zahl teilen lässt.


