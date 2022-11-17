# 교재 358 - 359

library(plotrix)

# 문제 1
# install.packages("carData")
df <- carData::MplsStops
str(df)

pie(table(df$race))

pie(table(df$problem),
    col=c("red", "blue"))

pie(table(df$personSearch))

pie3D(table(df$gender),
      labels=names(table(df$gender)),
      col=c("green", "orange", "yellow"))


# 문제 2
# install.packages("DAAG")
library(DAAG)
data(greatLakes)
ds <- data.frame(year=1918:2009, greatLakes)

plot(ds$year, 
     ds$Erie,
     type="l")

plot(ds$year,
     ds$michHuron,
     type="b",
     lty=2,
     col="red",
     main="michHuron호 수위",
     xlab="연도",
     ylab="수위")

plot(ds$year,
     ds$Erie,
     type="b",
     lty=1,
     col="red",
     xlab="연도",
     ylab="수위",
     ylim=c(173,177.5))
lines(ds$year,
      ds$michHuron,
      type="b",
      col="blue")
lines(ds$year,
      ds$StClair,
      type="b",
      col="green")


# 문제 3
# library(DAAG)
data(cfseal)

boxplot(cfseal$weight)

boxplot(cfseal$heart)
boxplot.stats(cfseal$heart)$out

cfseal$group <- ifelse(cfseal$age>=mean(cfseal$age), "old", "young")
cfseal$group <- factor(cfseal$group)
boxplot(weight~group,
        data=cfseal,
        col=c("orange", "green"))


qnum <- boxplot.stats(cfseal$weight)$stats
Q1 <- qnum[2]
Q3 <- qnum[4]
cfseal$group <- ifelse(cfseal$weight>Q3, "high", ifelse(cfseal$weight>=Q1, "middle", "low"))
cfseal$group <- factor(cfseal$group)
boxplot(stomach~group,
        data=cfseal)


# 문제 4
# library(DAAG)
data(greatLakes)
ds <- data.frame(year=1918:2009, greatLakes)

plot(ds$Erie, 
     ds$michHuron)

plot(ds[c("Erie", "michHuron", "Ontario", "StClair")])


# 문제 5
# library(DAAG)
data(grog)
plot(grog$Beer, 
     grog$Wine)

group <- as.numeric(grog$Country)
color <- c("red", "blue")
plot(grog[c("Beer", "Wine", "Spirit")],
     pch=group,
     col=color[group])
