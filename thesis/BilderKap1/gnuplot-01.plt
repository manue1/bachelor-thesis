set terminal latex
set output "gnuplot-01.tex"

set size 1.0, 1.0
# set size x y , wobei x und y Multiplikatoren für 12,7 und 8,9 cm sind
# die Maße entstammen der Bildschirmauflösung...

set format xy "$%g$"
set title "Ein Plot der Funktion $y=\\sin(x)$"
set xlabel "$x$-Achse"
set ylabel "$y$-Achse"
plot [0:6.28] [-1:1] sin(x)

