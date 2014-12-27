#set terminal latex
#set output "gnuplot-03.tex"


set terminal postscript 'Times Roman' 14
set output 'gnuplot-03.ps'


set dgrid3d 30,30,30
set style data lines  
set zrange [40:-40]   
set view 128,313
set autoscale
set title ""
set nokey
set xlabel "x"
set ylabel "y"
set zlabel "z"
set title "3D-Plot"
splot 'Beispieldaten-03.txt'
