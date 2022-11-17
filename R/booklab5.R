# 교재 194 - 197

# 문제 3
x <- c(2, 4, 6, 8)
y <- c(10, 12, 14, 16)
z <- c(18, 20, 22, 24)
m <- cbind(x, y, z)
m

matrix(c(2, 10, 18,
         4, 12, 20,
         6, 14, 22,
         8, 16, 24),
       nrow=4, byrow=T)

matrix(c(2, 4, 6, 8,
         10, 12, 14, 16,
         18, 20, 22, 24),
         ncol=3, byrow=F)


# 문제 4
m <- matrix(c(9, 7, 5, 3,
              8, 11, 2, 9),
            nrow=2, byrow=T)
m

colnames(m) <- c("a", "b", "c", "d")
rownames(m) <- c("x", "y")
m


# 문제 5
m
m <- t(m)
m

df <- data.frame(m)
df

info <- c(T, F, F, T)
df.new <- cbind(df, info)
df.new

str(df.new)


# 문제 6
blood <- c("A", "O", "AB", "B", "B")
rh <- c("+", "+", "-", "+", "+")
age <- c(21, 30, 43, 17, 26)

df <- data.frame(blood, rh, age)
df

colnames(df)

df.nb <- subset(df, blood!="B")
df.nb


# 문제 8
matrix(1:12, nrow=3) %% 3

matrix(1:12, nrow=3) + 3

matrix(1:12, nrow=3) + matrix(1:12, nrow=4) # error!

matrix(1:12, nrow=3) + matrix(1:12, nrow=3)

rbind(matrix(1:9, nrow=3), c("1", "2", "3")) + 3 # error!


# 문제 9
love <- data.frame(번호=c(1:7),
                   제목=c("그대랑", "다툼", "빨래", "두통", "보조개", "매듭", "이상해"),
                   좋아요=c(16075, 8218, 12119, 738, 3200, 16144, 5110))
str(love)


best <- love[which.max(love$좋아요),]
best


# 문제 10
mid <- data.frame(이름=c("스티브", "엔더맨", "크리퍼"),
                  국어=c(97, 88, 100),
                  역사=c(100, 82, 96),
                  수학=c(83, 90, 76),
                  과학=c(95, 91, 89),
                  영어=c(92, 87, 95))
final <- data.frame(이름=c("스티브", "엔더맨", "크리퍼"),
                    국어=c(94, 92, 100),
                    역사=c(95, 95, 100),
                    수학=c(90, 87, 85),
                    과학=c(92, 95, 84),
                    영어=c(89, 94, 96))

(mid[2:6] + final[2:6]) / 2


# 문제 11
data(cars)
class(cars) # dataframe

dim(cars) # 관측값 50개, 컬럼 2개

head(cars)

str(cars)

apply(cars, 2, mean)

max(cars$dist)

cars[which.max(cars$dist),]


# 문제 12
data(InsectSprays)
class(InsectSprays) # dataframe

str(InsectSprays)

tail(InsectSprays, 10)

unique(InsectSprays$spray)

table(InsectSprays$spray)

InsectSprays.e <- subset(InsectSprays, spray=="E")
InsectSprays.e

mean(InsectSprays.e$count)
