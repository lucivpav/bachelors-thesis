set term pdf
set output 'parallel_continuous_emissions_learning_time.pdf'

set style fill solid 0.5 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set xtics ('2' 2, '4' 3, '8' 4, '15' 5)
set xlabel 'number of workers'
set ylabel 'speed up ratio'
plot for [i=2:5] 'parallel_continuous_emissions_learning_time.csv' using (i):($1/column(i)) notitle
