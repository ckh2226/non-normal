# Set a random seed
set.seed(310)

# Number of simulations
m <- 1000

# Sample size
N <- 500

# datasets_list <- list()

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

setwd("~/Documents/GitHub/non-normal")
rlist::list.save(datasets_list, "~/Documents/GitHub/non-normal/equal_simulation.rds")

# Load and view simulated data
datasets_list <- readRDS("~/Documents/GitHub/non-normal/equal_simulation.rds")

# Randomly select data to view
par(mfrow = c(2, 2))
for(i in 1:4) {
  num <- sample(1:m, 1, replace = FALSE)
  hist(datasets_list[[num]][, "value"], main = num)
}
  



