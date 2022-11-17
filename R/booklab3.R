# 교재 112 - 113

# 문제 1
a <- 7
b <- 9
c <- a * b
print(c)


# 문제 2
a <- 90; b <- 60; c <- 80
d <- 360 - (a + b + c)
print(d)


# 문제 3
a <- 4; b <- 3
s <- a * b / 2
print(s)


# 문제 4
a <- 60
v1 <- 20; v2 <- 30;
avg <- a / v1 + a / v2
print(avg)


# 문제 5
sugar <- 25
water <- 125
percent <- sugar / (sugar + water) * 100
print(percent)


# 문제 6
v <- c(92, 43, 55, 28, 19)
print(v)


# 문제 7
v1 <- c("cyan", "magenta", "yellow", "black")
print(v1)

v2 <- c(TRUE, FALSE, TRUE)
print(v2)

v3 <- c(37.5, 8.2, 9.6, 11.8, 24.9)
print(v3)


# 문제 8
v <- c(1, 2, 3, 4)
sum(v)


# 문제 9
v1 <- c("T", "T", "T", "F", "T", "F", "F", "T", "T", "F")
sum(v1) # --> error

v2 <- c(T, T, T, F, T, F, F, T, T, F)
sum(v2) # --> 6


# 문제 10
sum(1:500)


# 문제 11
even <- seq(2, 100, 2)
sum(even)


# 문제 12
d <- c(1:100)

odd <- d[seq(1,100,2)]

odd[1:(length(odd)-10)]

pick <- odd[c(3, 7, 32)]
pick

names(pick) <- c("3rd", "7th", "32th")
pick

pick[-which(names(pick)=="7th")]

pick["3rd"] <- 3
pick
