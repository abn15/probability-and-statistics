#Q1
x1<-c(0,1,2,3,4)
p1<-c(0.41,0.37,0.16,0.05,0.01)

weighted.mean(x1,p1)

sum(x1 * p1)

c(x1 %*% p1)

#Q2
v <- function(t) {t * 0.1 * exp(-0.1 * t)}

expected_value <- integrate(v, lower = 0, upper = Inf)$value

expected_value

#q3

x <- c(0, 1, 2, 3)
p_x <- c(0.1, 0.2, 0.2, 0.5)

cost_per_book <- 6.00
selling_price_per_book <- 12.00
return_price_per_book <- 2.00

sum(x * p_x * (selling_price_per_book - cost_per_book) - (3 - x) * p_x * (cost_per_book - return_price_per_book))

#q4
# Define the probability density function f(x)
f_x <- function(x) 0.5 * exp(-abs(x))

# Calculate the first moment (mean)
mean_x <- integrate(function(x) x * f_x(x), lower = 1, upper = 10)$value

# Calculate the second moment (E(X^2))
second_moment_x <- integrate(function(x) x^2 * f_x(x), lower = 1, upper = 10)$value

# Calculate the variance (Var(X))
variance_x <- second_moment_x - mean_x^2


mean_x
variance_x
second_moment_x


#q5
f5<-function(x){0.75*((0.25)**(x-1))}
yf <- function(y){(3/4)*(1/4)^(sqrt(y)-1)}
x<-as.integer(readline(prompt="Enter the value of x"))
y = x^2
proby <- yf(y)
print(proby)
#expected value and variance of Y for X = 1,2,3,4,5
x<- c(1,2,3,4,5)
y<-x^2
proby <- yf(y)
print(proby)
#Expected value
ExpVal <- sum(y*proby)
print(ExpVal)
#Variance = E((y-E(y))^2)
M <- ExpVal
y1 <- (y-M)^2
proby1 <- yf(y1)
print(proby1)
VarVal <- sum(y1*proby1)
print(VarVal)




