#Q1(a)
v = c(rep("Gold",20),rep("Silver",30),rep("Bronze",50))
?rep#used to replicate that number of times-like gold will be in the vec 20 times

sample(v,10,replace = FALSE)
?replace#FALSE-for the case that once you draw you are not replacing the coin back

#Q1(b)
sample(c("Success","Failure"),10,replace=TRUE,prob=c(0.9,0.1))
#Q3
pcloudy = 0.4
prain = 0.2
pcloudyrain = 0.85
bayesTheorem <- function(pA, pB, pBA) {
  pAB <- pA * pBA / pB
  return(pAB)
} 
bayesTheorem(prain, pcloudy, pcloudyrain)
#4
dat<-iris
iris 

#4a Print first few rows of this dataset.
head(iris,10)

#4b Find the structure of this dataset. 
dim(iris)
str(iris)


#4c Find the range of the data regarding the sepal length of flowers.
vec<-iris$Sepal.Length
print(range(vec))




