pdf("gaussian_data_set.pdf")
curve(dnorm(x,0,4), lty=3, -30, 30, n=101, xlab="Value", ylab="Density", frame.plot=FALSE)
curve((dnorm(x,-20,3)+dnorm(x,20,3))/2, n=201, add=TRUE)
