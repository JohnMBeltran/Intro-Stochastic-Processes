n=100 	# Number of steps
p=0.5	# Probability of step being +1  (= 1 - prob of step being -1)
K=200    # Number of random walks

# Plot K random walks of length n+1 in different colours
for (k in 1:K){
  x=2*(rbinom(n,1,p)-0.5)		# Steps of -1 and +1 with probability 1-p and p respectively. 
  y=c(0,cumsum(x))						# Accumulate the random steps starting from 0. 
  if (k==1) {plot(y,1:(n+1),pch=20,type="s",xlab="S_n",ylab="time n",xlim=c(-3*sqrt(n),3*sqrt(n)),lwd=2)} else 
  {lines(y,1:(n+1),pch=20,type="s",col=k,lwd=2)}
}
abline(v=0)

# 2-dimensional random walk
n=100
x1=2*(rbinom(n,1,p)-0.5)		# Steps of -1 and +1 with probability 1-p and p respectively. 
y1=c(0,cumsum(x1))
x2=2*(rbinom(n,1,p)-0.5)		# Steps of -1 and +1 with probability 1-p and p respectively. 
y2=c(0,cumsum(x2))
plot(y1,y2,type="s")

# 2-dimensional random walk with Gaussian steps
n=10000       # Number of steps - infty gives Wiener process
x1=rnorm(n)		# Steps of N(0,1)
y1=c(0,cumsum(x1))
x2=rnorm(n)		# Steps of N(0,1)
y2=c(0,cumsum(x2))
plot(y1,y2,type="s")

