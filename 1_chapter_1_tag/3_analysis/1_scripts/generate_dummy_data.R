# Create dummy data
set.seed(123) # For reproducibility

# Values for data generation
n_subjects <- 100
ages <- sample(18:80, 100, replace = TRUE)
genders <- sample(c("M", "F"), 100, replace = TRUE)
scores <- rnorm(100, mean = 75, sd = 10)
groups <- sample(c("Control", "Treatment"), 100, replace = TRUE)

# Age group definitions
age_breaks <- c(0, 30, 50, 70)
age_labels <- c("18-30", "31-50", "51-70")

#' Generate base dataset with subject information
#' 
#' @param n_subjects Number of subjects to generate data for
#' @param ages Vector of subject ages
#' @param genders Vector of subject genders (M/F)
#' @param scores Vector of subject scores
#' @param groups Vector of subject groups (Control/Treatment)
#' @return data.frame with columns for id, age, gender, score and group
generate_base_data <- function(n_subjects, ages, genders, scores, groups) {
  data.frame(
    id = 1:n_subjects,
    age = ages,
    gender = genders,
    score = scores,
    group = groups
  )
}

#' Add age group categories to dataset
#' 
#' @param data Input data.frame containing age column
#' @return data.frame with additional age_group column
add_age_groups <- function(data) {
  data$age_group <- cut(data$age, breaks = age_breaks, labels = age_labels, include.lowest = TRUE)
  return(data)
}

#' Center scores by subtracting mean
#' 
#' @param data Input data.frame containing score column
#' @return data.frame with additional score_centered column
center_scores <- function(data) {
  score_col <- "score"
  mean_score <- mean(data[[score_col]])
  data$score_centered <- data[[score_col]] - mean_score
  return(data)
}

#' Add binary treatment indicator
#' 
#' @param data Input data.frame containing group column
#' @return data.frame with additional is_treatment column (Yes/No)
add_treatment_indicator <- function(data) {
  group_col <- "group"
  treatment_value <- "Treatment"
  data$is_treatment <- ifelse(data[[group_col]] == treatment_value, "Yes", "No")
  return(data)
}

#' Save data to RData file
#' 
#' @param data Data.frame to save
#' @param path File path to save to
#' @return None, saves file and prints confirmation message
save_data <- function(data, path) {
  dir.create(dirname(path), recursive = TRUE, showWarnings = FALSE)
  save(data, file = path)
  cat("\nData saved to:", path, "\n")
}

# Generate and process data using functions
dummy_data <- generate_base_data(n_subjects, ages, genders, scores, groups) %>%
  add_age_groups() %>%
  center_scores() %>%
  add_treatment_indicator()

# Save the data
save_data(dummy_data, "../../2_data/1_raw_data/dummy_data.RData")

# Print first few rows to verify
head(dummy_data)
