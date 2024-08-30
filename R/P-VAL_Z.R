# Load the stats package for pnorm function
library(stats)

# Define your variables
p_hat <- 0.514899  # Sample proportion (or mean)
p_0 <- 0.51      # Hypothesized proportion (or mean) under H0
n <- 934        # Sample size
alpha <- 0.10   # Significance level

# Calculate standard error
se <- sqrt(p_0 * (1 - p_0) / n)

# Calculate Z-statistic
Z <- (p_hat - p_0) / se

# Calculate p-value for one-tailed test (p_hat > p_0)
p_value_one_tailed <- 1 - pnorm(Z)

# Calculate p-value for two-tailed test (p_hat != p_0)
p_value_two_tailed <- 2 * (1 - pnorm(abs(Z)))

# Print results
cat("Z-statistic:", Z, "\n")
cat("One-tailed p-value:", p_value_one_tailed, "\n")
cat("Two-tailed p-value:", p_value_two_tailed, "\n")

# Make decision based on significance level alpha
if (p_value_two_tailed < alpha) {
  cat("Reject the null hypothesis (H0)\n")
} else {
  cat("Fail to reject the null hypothesis (H0)\n")
}
    