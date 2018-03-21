pdf("gaussian.pdf")
mean <- 10
sd <- 3
x <- seq(mean - sd*4, mean + sd*4, length=1000)
y <- dnorm(x, mean=mean, sd=sd)
plot(x, y, type="l", col="black", lwd=2, ylab="Density", xlab="Value", frame.plot=F)
