#VTC edited on 3/28/2023 to show Github features

#step 1 - generate background variables
N <- 1000
x1 <- rnorm(N)
x2 <- rbinom(N,1,.5)

b1 <- .1
b2 <- .2
b3 <- .9

equal1 <- -1.8
equal2 <- -0.6
equal3 <- 0.6
equal4 <- 1.8

mild1 <- -1
mild2 <- -0.2
mild3 <- 1
mild4 <- 2.5

severe1 <- 1
severe2 <- 2
severe3 <- 2.5
severe4 <- 3


#step 2 - generate eta
eta <- b1*x1 + b2*x2 + b3*rnorm(N)

#step 3 - generate ystar

gamma1 <- .8
gamma2 <- .6

ystar1 <- gamma1*eta + gamma2*rnorm(N, 0, sd(eta))
ystar2 <- gamma1*eta + gamma2*rnorm(N, 0, sd(eta))
ystar3 <- gamma1*eta + gamma2*rnorm(N, 0, sd(eta))
ystar4 <- gamma1*eta + gamma2*rnorm(N, 0, sd(eta))
ystar5 <- gamma1*eta + gamma2*rnorm(N, 0, sd(eta))
ystar6 <- gamma1*eta + gamma2*rnorm(N, 0, sd(eta))
ystar7 <- gamma1*eta + gamma2*rnorm(N, 0, sd(eta))
ystar8 <- gamma1*eta + gamma2*rnorm(N, 0, sd(eta))
ystar9 <- gamma1*eta + gamma2*rnorm(N, 0, sd(eta))
ystar10 <- gamma1*eta + gamma2*rnorm(N, 0, sd(eta))

#generate y1...y10
#y1- equally spaced
y1<-rep(NA, N)

for (a in 1:N) {
  if (ystar1[a] <= equal1) {
    y1[a] = 1
  }
  else if (ystar1[a] <= equal2) {
    y1[a] = 2
  }
  else if (ystar1[a] <= equal3) {
    y1[a] = 3;
  }
  else if (ystar1[a] <= equal4) {
    y1[a] = 4
  }
  else {
    y1[a] = 5
  }
}
hist(y1)

#y2- mild
y2<-rep(NA, N)

for (a in 1:N) {
  if (ystar2[a] <= mild1) {
    y2[a] = 1
  }
  else if (ystar2[a] <= mild2) {
    y2[a] = 2
  }
  else if (ystar2[a] <= mild3) {
    y2[a] = 3;
  }
  else if (ystar2[a] <= mild4) {
    y2[a] = 4
  }
  else {
    y2[a] = 5
  }
}
hist(y2)

#y3- mild
y3<-rep(NA, N)

for (a in 1:N) {
  if (ystar3[a] <= mild1) {
    y3[a] = 1
  }
  else if (ystar3[a] <= mild2) {
    y3[a] = 2
  }
  else if (ystar3[a] <= mild3) {
    y3[a] = 3;
  }
  else if (ystar3[a] <= mild4) {
    y3[a] = 4
  }
  else {
    y3[a] = 5
  }
}
hist(y3)

#y4- equally spaced
y4<-rep(NA, N)

for (a in 1:N) {
  if (ystar4[a] <= equal1) {
    y4[a] = 1
  }
  else if (ystar4[a] <= equal2) {
    y4[a] = 2
  }
  else if (ystar4[a] <= equal3) {
    y4[a] = 3;
  }
  else if (ystar4[a] <= equal4) {
    y4[a] = 4
  }
  else {
    y4[a] = 5
  }
}

#y5- severe
y5<-rep(NA, N)

for (a in 1:N) {
  if (ystar5[a] <= severe1) {
    y5[a] = 1
  }
  else if (ystar5[a] <= severe2) {
    y5[a] = 2
  }
  else if (ystar5[a] <= severe3) {
    y5[a] = 3;
  }
  else if (ystar5[a] <= severe4) {
    y5[a] = 4
  }
  else {
    y5[a] = 5
  }
}
hist(y5)

#y6- severe
y6<-rep(NA, N)

for (a in 1:N) {
  if (ystar6[a] <= severe1) {
    y6[a] = 1
  }
  else if (ystar6[a] <= severe2) {
    y6[a] = 2
  }
  else if (ystar6[a] <= severe3) {
    y6[a] = 3;
  }
  else if (ystar6[a] <= severe4) {
    y6[a] = 4
  }
  else {
    y6[a] = 5
  }
}
hist(y6)

#y7- equally spaced
y7<-rep(NA, N)

for (a in 1:N) {
  if (ystar7[a] <= equal1) {
    y7[a] = 1
  }
  else if (ystar7[a] <= equal2) {
    y7[a] = 2
  }
  else if (ystar7[a] <= equal3) {
    y7[a] = 3;
  }
  else if (ystar7[a] <= equal4) {
    y7[a] = 4
  }
  else {
    y7[a] = 5
  }
}
hist(y7)

#y8- mild
y8<-rep(NA, N)

for (a in 1:N) {
  if (ystar8[a] <= mild1) {
    y8[a] = 1
  }
  else if (ystar8[a] <= mild2) {
    y8[a] = 2
  }
  else if (ystar8[a] <= mild3) {
    y8[a] = 3;
  }
  else if (ystar8[a] <= mild4) {
    y8[a] = 4
  }
  else {
    y8[a] = 5
  }
}

#y9- mild
y9<-rep(NA, N)

for (a in 1:N) {
  if (ystar9[a] <= mild1) {
    y9[a] = 1
  }
  else if (ystar9[a] <= mild2) {
    y9[a] = 2
  }
  else if (ystar9[a] <= mild3) {
    y9[a] = 3;
  }
  else if (ystar9[a] <= mild4) {
    y9[a] = 4
  }
  else {
    y9[a] = 5
  }
}
hist(y9)

#y10- severe
y10<-rep(NA, N)

for (a in 1:N) {
  if (ystar10[a] <= severe1) {
    y10[a] = 1
  }
  else if (ystar10[a] <= severe2) {
    y10[a] = 2
  }
  else if (ystar10[a] <= severe3) {
    y10[a] = 3;
  }
  else if (ystar10[a] <= severe4) {
    y10[a] = 4
  }
  else {
    y10[a] = 5
  }
}

hist(y10)


Y <- cbind(y1, y2, y3, y4, y5, y6, y7, y8, y9, y10)
View(Y)

ysum1 <- apply(Y, 1, sum)
plot(density(ysum1))


#Here are a whole bunch more edits....
