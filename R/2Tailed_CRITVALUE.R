#Alexis G.L. Leclerc
#6/13/24
#
#2 Tailed Hypothesis Test
#H_0: uhat = u_0
#H_a: uhat !0 u_0
#Input your given level of significance alpha
#Input Your Z statistic


#INSTRUCTIONS
#qnorm(1 - alpha)
z_alpha_over_2 <- qnorm(1 - .1)
print(z_alpha_over_2)


#P-VALUE of a Z-score
p_value <- 2 * pnorm(-abs(Z))  # pnorm gives the cumulative probability for lower tail
p_value

# Define significance level
alpha <- 0.2

# Calculate critical value for two-tailed test
critical_value <- qnorm(1 - alpha/2)

# Assuming Z is your calculated standardized variable

# Perform hypothesis test
if (abs(Z) > critical_value) {
  cat("Reject H0: There is sufficient evidence to suggest that Z is different from zero.\n")
} else {
  cat("Fail to reject H0: There is not sufficient evidence to suggest that Z is different from zero.\n")
}


Z<- #Z statistic here
x <- seq(-3, 3, length.out = 1000)
y <- dnorm(x)

plot(x, y, type = "l", lwd = 2, col = "blue", ylab = "Density", xlab = "Z")
abline(v = c(-critical_value, critical_value), lty = 2, col = "red", lwd = 2)
abline(v = Z, col = "darkgreen", lwd = 2)
text(c(-critical_value - 0.6, critical_value + .6), 0.3, labels = c(paste("Critical Value:", round(critical_value, 2)),
                                                                     paste("Critical Value:", round(critical_value, 2))))
text(Z -.3, 0.3, labels = paste("Z:", round(Z, 2)), col = "darkgreen")
legend("topright", legend = c("Standard Normal PDF", "Critical Values", "Z Value"),
       col = c("blue", "red", "darkgreen"), lty = c(1, 2, 1), lwd = 2)

# Adding shading for critical regions
polygon(c(x[x <= -critical_value], -critical_value), c(y[x <= -critical_value], 0), col = "blue", border = NA)
polygon(c(x[x >= critical_value], critical_value), c(y[x >= critical_value], 0), col = "blue", border = NA)

# Adding labels
text(-.8, 0.1, labels = paste("Rejection Region\n(α = ", alpha, ")", sep = ""), col = "blue", cex = 0.8)
