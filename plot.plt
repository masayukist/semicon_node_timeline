set terminal pngcairo
set output "tech_year_graph.png"
set logscale y

set size 1.0, 1.0
set xlabel "Year"
set ylabel "Node Size (nm) or Industry Labeling (nm eq.)"
set yrange [0.4:30]
set ytics (0.5, 0.7, 1.0, 1.4, 1.6, 1.8, 2, 3, 4, 5, 7, 10, 14, 16, 20, 30)

plot \
     "./TSMC/results.dat" using 1:2 with linespoints title "TSMC", \
	 "./Samsung/results.dat" using 1:2 with linespoints title "Samsung", \
	 "./Intel/results.dat" using 1:2 with linespoints title "Intel", \
	 "./TSMC/predictions.dat" using 1:2 with linespoints title "TSMC (Predicted)", \
	 "./Samsung/predictions.dat" using 1:2 with linespoints title "Samsung (Predicted)" pointtype 2 lc rgb "blue", \
	 "./Intel/predictions.dat" using 1:2 with linespoints title "Intel (Predicted)" , \
	 "./Rapidus/predictions.dat" using 1:2 with linespoints title "Rapidus (Predicted)" , \
	 "./IRDS2022/predictions.dat" using 1:2 with linespoints dt 2 title "IRDS2022 (Predicted)" , \

set terminal postscript eps enhanced color
set output "tech_year_graph.eps"
replot
