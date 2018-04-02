i = 1
from = 0
to = 100
means <- c(15,85,50)
sds <- c(5,5,10)
for (i in 1:3)
{
	x <- seq(from, to, length=1000)
	pdf(paste("hmm-graph-gaussian", i,".pdf"))
	y <- dnorm(x,m=means[i],sd=sds[i])
	plot(x,y, type="l", col="black", lwd=20, xlab="Humidity [%]", ylab="Density", cex.lab=5, cex.axis=3)
	i = i + 1
}
