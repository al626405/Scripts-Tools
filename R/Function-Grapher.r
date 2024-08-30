# Load necessary libraries
library(ggplot2)
library(parallel)

# Define the function f(x) and its derivative f'(x)
f <- function(x) {
  cos(x) + sin(x) + x^2 + 2
}

f_prime <- function(x) {
  -sin(x) + cos(x) + 2*x
}

# Create a sequence of x values
x_values <- seq(-10, 10, by = 0.00001)

# Calculate y values for f(x) and f'(x) using parallel processing
y_values <- mclapply(list(f, f_prime), function(func) func(x_values), mc.cores = detectCores() -1)

# Extract y_values for f(x) and f'(x)
y_values_f <- y_values[[1]]
y_values_f_prime <- y_values[[2]]

# Create a data frame for plotting
data <- data.frame(x = x_values, 
                   y_f = y_values_f, 
                   y_f_prime = y_values_f_prime)


# Plot the function f(x) and its derivative f'(x)
ggplot(data, aes(x)) +
  geom_line(aes(y = y_f, color = "f(x) = cos(x) + sin(x) + x^2 + 2"), linewidth = 1) +
  geom_line(aes(y = y_f_prime, color = "f'(x) = -sin(x) + cos(x) + 2x"), linewidth = 1, linetype = "dashed") +
  geom_hline(yintercept = 0, color = "black", linewidth = 0.5) +  # Add black x-axis line
  geom_vline(xintercept = 0, color = "black", linewidth = 0.5) +  # Add black y-axis line
  labs(title = "Plot of f(x) and f'(x)",
       x = "x",
       y = "f(x)",
       color = "Functions") +
  theme_minimal() +
  scale_color_manual(values = c("blue", "violet")) +
  theme(plot.title = element_text(hjust = 0.5))

