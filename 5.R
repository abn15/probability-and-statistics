#1a
x <- punif(45, min = 0, max = 60)
print(x)
#punif(45,0,60,lower.tail=FALSE)
#1b
y<-punif(30,0,60) - punif(20,0,60)
print(y)

#2
b<-dexp(3,rate=1/2)
print(b)

x<-seq(0,5,0.02)
px<-dexp(x,rate=1/2)
plot(x,px,xlab = 'x',ylab='y')


pexp(3,rate=0.5)
px<-pexp(x,rate=0.5)
plot(x,px)


n<-1000
x_sim<-rexp(n,rate=1/2)
plot(density(x_sim),xlab='x',ylab='y')


#q3

pgamma(1,shape=2,scale=1/3) #a
qgamma(0.7,shape=2,scale=1/3) #b