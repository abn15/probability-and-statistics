#q1
# X ∼ binom(size=12, prob=1/6) ,P(7 ≤ X ≤ 9)=?.

x<-c(7,8,9)#favourable outcomes
byd<-dbinom(7,12,1/6)+dbinom(8,12,1/6)+dbinom(9,12,1/6)#method 1
print(byd)
byp<-pbinom(9, 12, 1/6) - pbinom(6, 12,1/6)#method 2
print(byp)

#q2
#the mean test score is 72, and the standard deviation is 15.2. What is
#the percentage of students scoring 84 or more in the exam?

pnorm(100,mean=72,sd=15.2)-pnorm(84,mean=72,sd=15.2)#prob of in scoring(100 to 0) MINUS scoring in(84,0)

#q3
?dpois
#concept of dpois
dpois(0,1)#this means prob of having 0 when the mean is 1
dpois(5, 3, log = TRUE)#log probability of observing 5 events in a Poisson distribution with a mean rate of 3 events

#now coming to the question
dpois(0,5)#no car

dpois(48,50)+dpois(49,50)+dpois(50,50)#prob=48,49,50 when the mean was 50
?ppois

ppois(50,50)-ppois(47,50) #47 as it includes 47 and lower and we include 48

#q4
# 250 processors there are 17 defective,we chose 5 what is the probability of that 3 are defective

dbinom(3,5,17/250)
pbinom(3,5,17/250)-pbinom(2,5,17/250)#makes no sense tho lol

dhyper(3,17,233,5)
#Hypergeometric Distribution: Sampling without replacement

#q5
#44.7% have used wiki, if p(x)=31 what is sample space 
#5b
#PMF
X=0:31
Y=dbinom(X,31,0.447)
plot(X,Y)
#c
Z=pbinom(X,31 ,0.447)
plot(X,Z)

#5d
mean(X)
sd(x)
var(X)




