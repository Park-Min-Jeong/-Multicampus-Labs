# 교재 323 - 325

library(RColorBrewer)

# 문제 2
survey <- c(T, F, T, T, F, T, F, F, F, F)
barplot(table(survey),
        names.arg=c("No", "Yes"),
        col=terrain.colors(2))


# 문제 3
data(mtcars)
barplot(table(mtcars$cyl),
        horiz=T,
        main="실린더 종류별 분포",
        ylab="실린더의 수",
        col=brewer.pal(3, "Set3"))


# 문제 4
data(sleep)
ds <- sleep$extra
hist(ds,
     main="Histogram of sleep",
     xlab="Increase in hours of sleep",
     col="blue")


# 문제 5
ds <- table(mtcars$cyl, mtcars$gear)
color <- c("tomato", "salmon", "peachpuff")

barplot(ds,
        main="Distribution of carburetors",
        beside=T,
        xlab="Number of gear",
        legend.text=c("cyl 4", "cyl 6", "cyl 8"),
        col=color)


# 문제 6
ds <- trees$Height
color.6 <- rep("#f1faee", 6)
color.6[3:5] <- "#e63946"

hist(ds,
     main="Histogram of Black Cherry Trees",
     xlab="Height(ft)",
     col=color.6)


# 문제 7
par(mfrow=c(2,3), mar=c(5,4,4,3))
hist(ds)
hist(ds)
hist(ds)
hist(ds)
hist(ds)
hist(ds)
par(mfrow=c(1,1), mar=c(5,4,4,2)+.1)
hist(ds)


# 문제 8
male <- c(6.9, 30.4, 80.4)
female <- c(4.9, 38.2, 82.7)
ds <- rbind(male, female)
colnames(ds) <- c("samsung", "apple", "huawei")

barplot(ds,
        beside=T,
        horiz=T,
        main="성별에 따른 브랜드 선호도",
        las=1,
        col=c("#ffe66d", "#00afb9"))

# 문제 9
holyday <- c(14, 15, 15, 16, 14, 11, 12)
holyday.actual <- c(15, 35, 38, 36, 34, 32, 32)
ds <- rbind(holyday, holyday.actual)
colnames(ds) <- c("한국", "일본", "독일", "러시아", "미국", "프랑스", "호주")

barplot(ds,
        beside=T,
        main="주요 국가별 공휴일 현황",
        xlab="국가",
        legend.text=c("공휴일 수", "실제 쉬는 날"),
        args.legend=list(x="topleft", bty="n", inset=c(-.25,-.25)),
        names.arg=colnames(ds),
        col=c("grey", "skyblue"))
