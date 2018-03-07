# This script updates the Probability column
DATA_FILE=discrete_mle.csv
TEMP_FILE=tmp.csv
N=`cat $DATA_FILE | tail -n +2 | awk '{sum += $2} END {print sum}'`
head=`cat $DATA_FILE| head -n 1`
echo $head > $TEMP_FILE
cat discrete_mle.csv | tail -n +2 | awk "{print \$1, \$2, \$2/$N}" >> $TEMP_FILE
mv $TEMP_FILE $DATA_FILE
