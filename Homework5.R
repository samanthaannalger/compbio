#Homework 5
#Using R
#Samantha Alger
#2017-02-15
rep(1:4,2)
rep(1:4, each =2)
rep(1:4, c(2,1,2,1))

seq(from=1, to=5, by=0.5)
c(seq(1,5, by=0.5), rep(1:5))

dogs<-c("chow","pug","lab")
dogs[2]


#Problem 1:

x <- 1.1
a <- 2.2
b <- 3.3

#a
z <- x^(a^(b))
print(z)
#b
z <- (x^a)^b
print(z)
#c
z <- ((3*(x^3)) + (2*(x^2)) + 1)
print(z)
#d
floor(z%%2)

#Problem 2

#a
c(rep(1:8),rep(7:1))

#b
rep(1:5, times=1:5)

#c
rep(5:1, times=5:1)

#Problem 3
z <- runif(2)
print(z)

x <- z[1]
y <- z[2]

r <- sqrt((x^2) + (y^2))

print(r)

theta <-atan((y/x))
print(theta)

coordinates <- c(r,theta)

print(coordinates)

#Problem 4
queue <- c("sheep", "fox", "owl", "ant")

#a
queue <- append(queue,"serpent", after =length(queue))
print (queue)
#b
queue <- queue[-1]
print(queue)

#c
queue <- append(queue, "donkey",1)
print(queue)
queue <- c("donkey", "fox", "owl", "ant", "serpent")

#d
queue <- queue[-5]
queue

#e
queue <- queue[-3]
queue

#f
queue <- append(queue, "aphid",2)
queue

#g
which(queue == "aphid")

#Problem 5
v1 <- 1:100
v1[rowSums(outer(v1, c(2, 3, 7), "%%") == 0) == 0]

#Problem 6
z <- runif(1000)
head(z)

#a
vector1 <- c(mean(z < .10), mean(z > 0.90), mean(z > 0.45 & z < 0.55))
print(vector1)
#b
logz<- log10(z)
vector2 <- c(mean(logz < .10), mean(logz > 0.90), mean(logz > 0.45 & logz < 0.55))
print(vector2)

z2 <- z^2
vector3 <- c(mean(z2 < .10), mean(z2 > 0.90), mean(z2 > 0.45 & z2 < 0.55))
print(vector3)

sqrtz <- sqrt(z)
vector4 <- c(mean(sqrtz < .10), mean(sqrtz > 0.90), mean(sqrtz > 0.45 & sqrtz < 0.55))
print(vector4)


#c
print(vector1)
print(vector2)
print(vector3)
print(vector4)
