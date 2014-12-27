set terminal latex
set output "gnuplot-02.tex"
#set size 5/4., 4/4.
set format xy "$%g$"
set title "Varianz des Messwertes"
set xlabel "$t$/s"
set ylabel "$U$/V"
plot 'Beispieldaten-02.txt' with lines
# alternativ zu lines: points, linespoints
