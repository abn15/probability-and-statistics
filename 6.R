# q1
f1<-function(x,y){
  return (2*(2*x +3*y)/5)
}

#(i) check that it is a joint density function or not? (Use integral2())
install.packages("pracma")
library(pracma)

val<-integral2(f1,xmin=0,xmax=1,ymin=0,ymax=1)
print(val)# if the value is one than it is a joint density func

#(ii) find marginal distribution g(x) at x = 1.

fy<-function(y)
{
   f1(1,y)
}
gx<-integrate(fy,0,1)
print(gx)

#(iii) find the marginal distribution h(y) at y = 0.
fx<-function(x){
  f1(x,0)
}

hy<-integrate(fx,0,1)
hy

#(iv) find the expected value of g(x, y) = xy.

f2<-function(x,y){
  return (x*y*(4*x+6*y)/5)
}

print(integral2(f2,xmin=0,xmax=1,ymin=0,ymax=1))


#(2) The joint probability mass function of two random variables X and Y is
#f(x, y) = {(x + y)/30; x = 0, 1, 2, 3; y = 0, 1, 2}
#Then write a R-code to
#(i) display the joint mass function in rectangular (matrix) form.

#2

#i,ii
f<-function(x,y){
  return ((x+y)/30)
}
m<-matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
print(m)
if (sum(m)==1){
  print ("It is a PMF")
}

#iii,iv
g<-apply(m,1,sum)
g
h<-apply(m,2,sum)
h

#v
m[1,2]/h[2]

#vi
x<-c(0:3)
EX<-sum(x*g)
print(EX)
EX_square<-sum(x*x*g)
print(EX_square)
VarX=EX_square-(EX)*EX
print(VarX)
y<-c(0:2)
EY<-sum(y*h)
print(EY)
EY_square<-sum(y*y*h)
print(EY_square)
VarY=EY_square-(EY)*EY
print(VarY)
fun2<-function(x,y){
  x*y*(x+y)/30
}
mat2<-matrix(c(fun2(0,0:2),fun2(1,0:2),fun2(2,0:2),fun2(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
eXY<-sum(mat2)
covariance<-eXY-EX*EY
print(covariance)
correlation<-covariance/(sqrt(VarX*VarY))
print(correlation

