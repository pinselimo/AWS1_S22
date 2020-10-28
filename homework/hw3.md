# Hausübung 1

## Aufgabe 1

*2 Punkte*

Folgende zwei Listen sollen in **einer** einzigen Zeile in Python erstellt werden (keine ';'-Schummelei Erlaubt!):

+ Eine Liste mit den Quadratwurzeln der geraden Zahlen von 0 bis 100
+ Eine Liste mit den Zahlen welche durch 3 teilbar sind von 0 bis 100

*Tipp:* Eine List-Comprehension ist aufgebaut wie folgt: ```[ f(x) for x in collection if p(x)]``` wobei der Teil ab ```if``` weggelassen werden kann und ```f(x)``` auch ```x``` oder ein anderer Ausdruck sein kann.

## Aufgabe 2

*4.5 Punkte wobei insbesondere darauf geachtet sei Rechenweg* **und** *Python-Code abzugeben.*

Finde zumindest eine umgeformte Variante für die Umwelt-Funktion, mit welcher sich bei ```CHI = 0.01``` die Umwelt dynamisch verhält.

Die Gleichung für den Umweltzustand z so wie wir sie derzeit hier definiert hatten lautet:

<img src="https://render.githubusercontent.com/render/math?math=z_{t%2B1} = z_t %2B \nu (z_t-z_t^2)[e^{\delta z_t^{\rho}-\omega f(x_t,y_t,z_t,p_t)}-1]">

Beziehungsweise in Python:

~~~python
def umwelt(x,y,z,p):
    g = exp(DELTA*z**RHO - OMEGA*fluss_emissionen(x,y,z,p))
    return z %2B NY * (z-z**2) * (g - 1.0)
~~~

Mit einer **mathematischen Umformung** von <img src="https://render.githubusercontent.com/render/math?math=z_{t %2B 1}"> bzw. der **letzten Zeile** dieses Codes lässt sich das **dynamische Ergebnis** erreichen.

**Tipps:**<br>
*Binome:* <img src="https://render.githubusercontent.com/render/math?math=(a-b) * (c-d) = a*c - b*c - a*d %2B b*d"><br>
*Herausheben:* <img src="https://render.githubusercontent.com/render/math?math=(a^2 %2B 2*a) = a * (a %2B 2)">

