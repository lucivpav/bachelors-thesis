set term pdf
set output 'hidden_states_learning_testing_time.pdf'

set style fill solid 0.5 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set xtics ('10' 1, '20' 2, '30' 3, '40' 4)
set xlabel 'number of hidden states'
set ylabel 'time [s]'
plot for [i=1:4] 'hidden_states_learning_time.csv' using (i):i lc 1 notitle
