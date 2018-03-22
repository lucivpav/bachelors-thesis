pdf("gaussian_mixture_estimate.pdf")
xlim <- c(-10,50)
ylim <- c(0,0.06)
data <- scan("random_gaussian_mixture.data")
model <- read.csv(file="random_gaussian_mixture.model.data", header=T, sep=" ")
hist(data, freq = F, breaks = 10, xlab="Value", main="", xlim=xlim, ylim=ylim);
curve(model[1,1]*dnorm(x,model[1,2],sqrt(model[1,3]))+model[2,1]*dnorm(x,model[2,2],sqrt(model[2,3])), xlim[1], xlim[2], n=201, ylab="Density", lwd=2, add=T, col="green")
for (i in c(1,2)) curve(model[i,1]*dnorm(x, model[i,2], sqrt(model[i,3])), xlim[1], xlim[2], lty=3, add=T);
