set term pdf
set output 'parallel_learning_time.pdf'

set style fill solid 0.5 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set xtics ('1' 1, '2' 2, '4' 3, '8' 4, '15' 5)
set xlabel 'number of workers'
set ylabel 'learning time [s]'
set yrange [0:40]
plot for [i=1:5] 'parallel_learning_time.csv' using (i):i notitle
