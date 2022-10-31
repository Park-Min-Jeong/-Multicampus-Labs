# 문제1
v1 <- 1:10
v2 <- v1*2
max_v <- max(v2)
min_v <- min(v2)
avg_v <- mean(v2)
sum_v <- sum(v2)
v3 <- v2[-5]
print(v1)
print(v2)
print(v3)
print(max_v)
print(min_v)
print(avg_v)
print(sum_v)


# 문제2
v4 <- seq(1, 9, 2)
print(v4)

v5 <- rep(1, 5)
print(v5)

v6 <- rep(1:3, times=3)
print(v6)

v7 <- rep(1:4, each=2)
print(v7)


# 문제3
nums <- sample(1:100, 10)
print(sort(nums))
print(sort(nums, decreasing=T))
print(nums[nums>50])
print(which(nums<=50))
print(which.max(nums))
print(which.min(nums))


# 문제4
v8 <- seq(1, 10, 3)
names(v8) <- LETTERS[1:4]
print(v8)


# 문제5
score <- sample(1:20, 5)
myFriend <- c("둘리", "또치", "도우너", "희동", "듀크")
paste(score, myFriend, sep="-")
print(myFriend[which.max(score)])
print(myFriend[which.min(score)])
print(myFriend[which(score>10)])


# 문제6
count <- sample(1:100, 7)
week.korname <- c("일요일", "월요일", "화요일", "수요일",
                  "목요일", "금요일", "토요일")
paste(count, week.korname, sep=":")
print(week.korname[which.max(count)])
print(week.korname[which.min(count)])
print(week.korname[which(count>50)])


# 문제7
v9 <- sample(1:30, 10, replace=T)
names(v9) <- letters[26:17]
v10 <- v9
names(v9) <- NULL
print(v9)
print(v10)

v9 <- sample(1:30, 10, replace=T)
v10 <- v9
names(v10) <- letters[length(letters):(length(letters)-9)]
print(v9)
print(v10)
