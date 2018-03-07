set term pdf
set boxwidth 0.3
set style fill solid
set key autotitle columnhead
unset key

set output 'discrete_mle_hist.pdf'
set ylabel 'Count'
set yrange [0:1]
set autoscale ymax
plot 'discrete_mle.csv' using ($2):xtic(1) with boxes


set output 'discrete_mle_prob.pdf
set ylabel 'Probability'
set yrange [0:1]
plot 'discrete_mle.csv' using ($3):xtic(1) with boxes
