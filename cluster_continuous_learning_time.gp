set term pdf
set output 'cluster_continuous_learning_time.pdf'

set style fill solid 0.5 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set xtics ('1' 1, '2' 2, '3' 3, '4' 4)
set xlabel 'processors per worker'
set ylabel 'continuous emissions learning time [s]'
set yrange [0:40]
plot for [i=1:4] 'cluster_continuous_learning_time.csv' using (i):i notitle
