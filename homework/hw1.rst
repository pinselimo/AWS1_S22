Hausübung 1
===========

Aufgabe 1
---------

*1.5 Punkte*

Welchen Typ haben folgende Python-Objekte:
 - ``a = 63``
 - ``b = 42.0``
 - ``c = '127.32'``
 - ``d = (True, False)``
 - ``e = 1 == 2``
 - ``f = dict([(1,'a'), (2,'b')])``

Mit welcher Funktion lässt sich der Typ eines Ausdrucks in Python überprüfen?

Aufgabe 2
---------

*1 Punkt*

Was sind die Ergebnisse der folgenden Operationen:
 - ``a = 1 >= 3 or 2 < 3``
 - ``b = 63%4``
 - ``c = 63 // 2 <= 42``
 - ``d = np.array([1,2]*3)*3``

Aufgabe 3
---------

*4 Punkte*

In der Anaconda-Bar ist es Tradition das Biertrinken mit einer Hymne zu begleiten. Auf die Regalwand der Bar passen genau 99 Bier und diese werden mitgezählt:

  | 99 bottles of beer on the wall, 99 bottles of beer,
  | take one off, pass it around, 98 bottles of beer on the wall!
  | 98 bottles of beer ...
  | ...
  | 1 bottle of beer on the wall, 1 bottle of beer,
  | take one off, pass it around, no more bottles of beer on the wall!
  | No more bottles of beer on the wall, no more bottles of beer,
  | go to the shop, by some more, 99 bottles of beer on the wall!

Schreibe eine Funktion namens ``beer`` welche ein ``int``-Argument ``bottles`` entgegennimmt. Von dieser Anzahl an ``bottles`` soll dann der Liedtext heruntergezählt werden. Also zB startend mit "63 bottles of beer .." bis zu "No more bottles..".
Jede Strophe soll als ein ``str`` (String) separat aber in der richtigen Reihenfolge in einer Liste als Ergebnis zurückgegeben werden.

Mit welchem Befehl ließe sich ein String in der Konsole **ausgeben** ?

*Tipp: Range nimmt auch negative "step" Argumente entgegen.*
Teste in der Konsole mit list(range( start, stop, step )) wie sich die Argumente auswirken!

