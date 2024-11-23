# Set a random seed
set.seed(310)

# Number of simulations
m <- 1000

# Sample size
N <- 500

datasets_list <- list()

# Set parameters
thresholds.equal <- c(-1.8, -0.6, 0.6, 1.8)
gammas <- c(.9, sqrt(.19))
betas <- c(.2, .4, .8)

for(i in 1:m) {
  data <- data.frame("value" = rep(NA, N))
  for(i in 1:N) {
    x1 <- rnorm(N)
    x2 <- rbinom(N,1,.5) 
    eta <- betas[1]*x1 + betas[2]*x2 + betas[3]*rnorm(N)
    ystar <- gammas[1]*eta + gammas[2]*rnorm(N, 0, sd(eta))
    for(a in 1:N) {
      if(ystar[a] <= thresholds.equal[1]) {
        data[a, "value"] <- 1
      }
      else if (ystar[a] <= thresholds.equal[2]) {
        data[a, "value"] <- 2
      } 
      else if (ystar[a] <= thresholds.equal[3]) {
        data[a, "value"] <- 3
      } 
      else if (ystar[a] <= thresholds.equal[4]) {
        data[a, "value"] <- 4
      } 
      else {
        data[a, "value"] <- 5
      }
    }
  }
  datasets_list <- rlist::list.append(datasets_list, data)
}

setwd("C:/Users/colev/Dropbox/collab_2023/Cassi/non-normal")
# rlist::list.save(datasets_list, "equal_simulation.rds")

# Load and view simulated data
datasets_list <- readRDS("equal_simulation.rds")

# Turn datasets into one giant matrix, with 1000 columns and 500 rows
# Each set of 10 columns should be items 1:10
datasets_mat <- do.call("cbind", datasets_list)

# Now get this in list format so we can write it out...
datasets_mat.list <- list()
for (i in 1:100) {
  the.indices <- (i-1)*10+1:10
  datasets_mat.list[[i]] <- datasets_mat[,the.indices]
}

# Write out all the datasets as *.csv files
for (r in 1:length(datasets_mat.list)) {
  write.table(datasets_mat.list[[r]], paste0("data/equal_simulation/equal_simulation_",r, ".csv"), sep = ",", row.names = FALSE, col.names = FALSE)
}





# Randomly select data to view
par(mfrow = c(2, 2))
for(i in 1:4) {
  num <- sample(1:m, 1, replace = FALSE)
  hist(datasets_list[[num]][, "value"], main = num)
}
  



