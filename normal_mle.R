library(MASS)
pdf("normal_mle.pdf")
count <- 100;
data <- rnorm(count, mean = 40, sd = 32);
est <- fitdistr(data, densfun="normal")$estimate;
hist(data, freq = F, breaks = 10, ylab="Density", xlab="Value", main="");
curve(dnorm(x, est[1], est[2]), col="green", lwd=2, add=T);
