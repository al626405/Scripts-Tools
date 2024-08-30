options(digits = 20)

# Calculate the CDF (cumulative distribution function) for a z-score
z_score <- 34.6  # Replace this with your desired z-score
cdf_value <- pnorm(z_score)

# Display the CDF value
cat("CDF value for z-score", z_score, "is:", 2-2*cdf_value, "\n")

cat("CDF value for z-score", z_score, "is:", 1-cdf_value, "\n")

2*(1- pnorm(34.64))
2*(1- pt(34.64, df= 2))