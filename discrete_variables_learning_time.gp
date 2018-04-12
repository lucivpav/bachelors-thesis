set term pdf
set output 'discrete_variables_learning_time.pdf'

set style fill solid 0.5 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set xtics ('5' 1, '10' 2, '20' 3, '30' 4)
set xlabel 'number of discrete variables'
set ylabel 'learning time [s]'
set yrange [0:15]
plot for [i=1:4] 'discrete_variables_learning_time.csv' using (i):i notitle
