Hausübung 4
===========

**Als Jupyter-Notebook abzugeben**

Aufgabe 1
---------

*2 Punkte*

Das ``hypothesis`` Paket beinhaltet sogenannte ``strategies`` mit welchen sich der Definitionsbereich einer Funktion beschreiben lässt.

   - Welche Strategy erzeugt nur True- und False-Werte?

   - Wie erreicht man nur positive Ganzzahlen?

   - Mit welcher Strategy lassen sich Rationale Zahlen (also Brüche) erstellen?

   - Wie generiert man Listen von Ganzzahlen mit einer maximalen Länge von 10?


Aufgabe 2
---------

*4.5 Punkte*

Im Wonderland - Modell ist der Definitionsbereich der Zustandsvariable für die Umwelt das Intervall [0,1]. Schreibe eine Test-Funktion die mittels des ``hypothesis`` Pakets überprüft, ob die ``umwelt`` - Funktion diesen Bereich überschreitet.

Versuche bei jenen Versionen, welche den Definitionsbereich überschreiten, dies durch einen if-else-Block zu verhindern. Ändert sich dadurch das Simulations - Resultat?

Teste dabei folgende Versionen der Umweltfunktion:

*Version 1.*

.. code:: python

   def umwelt(x,y,z,p):
       g = exp(DELTA*z**RHO - OMEGA*fluss_emissionen(x,y,z,p))
       return z + NY * (z-z**2) * (g - 1.0)

*Version 2.*

.. code:: python

   def umwelt(x,y,z,p):
       g = exp(DELTA*z**RHO - OMEGA*fluss_emissionen(x,y,z,p))
       return z + NY * (z*g + z**2 - g*z**2 - z)

*Version 3.*

.. code:: python

   def umwelt(x,y,z,p):
       g = exp(DELTA*z**RHO - OMEGA*fluss_emissionen(x,y,z,p))
       return z * (1 + NY * g + NY*z - NY*g*z - NY)


