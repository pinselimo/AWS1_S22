Hausübung 1
===========

Aufgabe 1
---------

*2.5 Punkte*

Aufgabe 2
---------

*4 Punkte wobei insbesondere darauf geachtet sei Rechenweg* **und** *Python-Code abzugeben.*

Finde zumindest eine umgeformte Variante für die Umwelt-Funktion, mit welcher sich bei ``CHI = 0.01`` die Umwelt dynamisch verhält.

Die Gleichung für den Umweltzustand $z$ so wie wir sie derzeit hier definiert hatten lautet:

$z_{t+1} = z_t + \nu (z_t-z_t^2)[e^{\delta z_t^{\rho}-\omega f(x_t,y_t,z_t,p_t)}-1]$

Beziehungsweise in Python:

``
def umwelt(x,y,z,p):
    g = exp(DELTA*z**RHO - OMEGA*fluss_emissionen(x,y,z,p))
    return z + NY * (z-z**2) * (g - 1.0)
``

Mit einer **mathematischen Umformung** von $z_{t+1}$ bzw. der **letzten Zeile** dieses Codes lässt sich das **dynamische Ergebnis** erreichen.

**Tipps:**
*Binome: $\quad (a-b) * (c-d) = a*c - b*c - a*d + b*d$*
*Herausheben: $\quad (a^2+2*a) = a * (a+2)$*

