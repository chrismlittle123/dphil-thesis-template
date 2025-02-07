# Create dummy data
set.seed(123) # For reproducibility

# Generate sample data
dummy_data <- data.frame(
  id = 1:100,
  age = sample(18:80, 100, replace = TRUE),
  gender = sample(c("M", "F"), 100, replace = TRUE),
  score = rnorm(100, mean = 70, sd = 15),
  group = sample(c("Control", "Treatment"), 100, replace = TRUE)
)

# Add some calculated columns
dummy_data$age_group <- cut(dummy_data$age, 
                           breaks = c(0, 30, 50, 70, Inf),
                           labels = c("18-30", "31-50", "51-70", "70+"))

# Create output directory if it doesn't exist
dir.create("../../2_data/1_raw_data", recursive = TRUE, showWarnings = FALSE)

# Save the data
save(dummy_data, file = "../../2_data/1_raw_data/dummy_data.RData")

# Print first few rows to verify
head(dummy_data)
cat("\nData saved to: ../../2_data/1_raw_data/dummy_data.RData\n")
