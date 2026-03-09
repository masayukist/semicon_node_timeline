set terminal pngcairo
set output "node_scale_year.png"
set logscale y

set xlabel "Year"
set ylabel "Node Size (nm)"
set yrange [1:30]
set ytics (1, 1.4, 1.6, 1.8, 2, 3, 4, 5, 7, 10, 14, 16, 20, 30)

plot \
     "./TSMC/results.dat" using 1:2 with linespoints title "TSMC", \
	 "./Samsung/results.dat" using 1:2 with linespoints title "Samsung", \
	 "./Intel/results.dat" using 1:2 with linespoints title "Intel", \
	 "./TSMC/predictions.dat" using 1:2 with linespoints title "TSMC (Predicted)", \
	 "./Samsung/predictions.dat" using 1:2 with linespoints title "Samsung (Predicted)" pointtype 2 lc rgb "blue", \
	 "./Intel/predictions.dat" using 1:2 with linespoints title "Intel (Predicted)" , \
	 "./Rapidus/predictions.dat" using 1:2 with linespoints title "Rapidus (Predicted)" , \
