pdf("gaussian_mixture.pdf")
par0 <- par(mar=c(5,4,0.5,0.5))
curve((dnorm(x,5,2)+dnorm(x,10,2)+dnorm(x,15,2))/3, -5, 25, n=201, xlab="Value", ylab="Density", frame.plot=FALSE)
for (m in c(5,10,15)) curve(dnorm(x,m,2)/3, lty=3, n=101, add=TRUE)
