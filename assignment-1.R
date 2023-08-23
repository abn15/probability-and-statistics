#Q1-Create a vector c = [5,10,15,20,25,30] and write a program which returns the max-imum and minimum of this vector.
c<-c(5,10,15,20,25,30)
max(c)
min(c)

#Q2-Write a program in R to find factorial of a number by taking input from user. Please print error message if the input number is negative.
n=readline('Enter the number ')
fact=1
for(i in 1:n)
  fact=fact*i
print(fact)

#Q3-Write a program to write first n terms of a Fibonacci sequence. You may take n as an input from the user.
m=readline('Enter the number for fibonacci')
a=0
b=1
for(i in 1:m){
  c=a+b
  print(a)
  a=b
  b=c
}

#Q4-Write an R program to make a simple calculator which can add, subtract, multiply and divide.

add <- function(a, b) {
  return(a + b)
}


subtract <- function(a, b) {
  return(a - b)
}


multiply <- function(a, b) {
  return(a * b)
}


divide <- function(a, b) {
  if (b != 0) {
    return(a / b)
  } else {
    return("Cannot divide by zero!")
  }
}

calculator <- function() {
  cat("Simple Calculator\n")
  cat("1. Add\n")
  cat("2. Subtract\n")
  cat("3. Multiply\n")
  cat("4. Divide\n")
  
  choice <- as.integer(readline("Enter your choice (1/2/3/4): "))
  
  num1 <- as.numeric(readline("Enter the first number: "))
  num2 <- as.numeric(readline("Enter the second number: "))
  
  result <- switch(choice,
                   "1" = add(num1, num2),
                   "2" = subtract(num1, num2),
                   "3" = multiply(num1, num2),
                   "4" = divide(num1, num2),
                   "Invalid choice")
  
  cat("Result: ", result, "\n")
}

#Q5-Explore plot, pie, barplot etc. (the plotting options) which are built-in functions in R.
max.temp=c(22,27,26,20,33)
barplot(max.temp)

plot(max.temp)
pie(max.temp)
