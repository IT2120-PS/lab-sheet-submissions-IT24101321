setwd("C:\\Users\\Heshan\\Desktop\\IT24101321")
getwd()


# Read the TXT file (tab-delimited)
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

# Extract numeric column
weights <- data$Weight.kg.

#1. Calculate the population mean and population standard deviation of the laptop
#bag weights.

#  Population mean & SD
true_mean <- mean(weights)
true_sd   <- sd(weights)

cat("Population Mean:", true_mean, "\n")
cat("Population SD:", true_sd, "\n")


#2. Draw 25 random samples of size 6 (with replacement) and calculate the sample
#mean and sample standard deviation for each sample.

# Step 2: Take 25 random samples of size 6
set.seed(321)
sample_means <- c()
sample_sds <- c()

for(i in 1:25){
  samp <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(samp)
  sample_sds[i]   <- sd(samp)
}


#3. Calculate the mean and standard deviation of the 25 sample means and state the
#relationship of them with true mean and true standard deviation.

# Step 3: Mean & SD of 25 sample means
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)

cat("\nMean of 25 Sample Means:", mean_of_sample_means, "\n")
cat("SD of 25 Sample Means:", sd_of_sample_means, "\n")



# Step 4: Relationship
cat("\nRelationship:\n")
cat("- Mean of Sample Means ≈ True Mean\n")
cat("- SD of Sample Means < True SD (Central Limit Theorem)\n")

