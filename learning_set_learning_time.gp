set term pdf
set output 'learning_set_learning_time.pdf'

set style fill solid 0.5 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set xtics ('1000' 1, '2000' 2, '3000' 3, '4000' 4, '5000' 5)
set xlabel 'number of training sequences'
set ylabel 'learning time [s]'
set yrange [0:40]
plot for [i=1:5] 'learning_set_learning_time.csv' using (i):i notitle
