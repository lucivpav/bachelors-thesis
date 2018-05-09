# Parallel implementation of dynamic naive Bayesian classifier

## Abstract

Dynamic naive Bayesian classifier (DNBC) has many applications, such as
in speech recognition, handwriting recognition or weather prediction. DNBC
viiextends a hidden Markov model by supporting multiple observed variables. It
is assumed that these variables are mutually statistically independent. This
assumption greatly simplifies computations and a phenomenon called curse
of dimensionality does not occur. I have implemented the classifier in Scala
language on top of Apache Spark. The implementation can be parallelized by
using Map Reduce paradigm. I have managed to double the speed up when
using 15 processor cores. I have further demonstrated, that the speed up can
be achieved not only by increasing the number of cores, but also by increasing
the number of machines in a cluster.

## Paper

Download the paper [here](https://github.com/lucivpav/bachelors-thesis/raw/master/Pavel%20Lu%C4%8Div%C5%88%C3%A1k%20BP.pdf).
