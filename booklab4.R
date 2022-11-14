# 교재 147 - 149

# 문제 2
a <- c(1, 2)
class(a)

b <- '3'
class(b)

c <- c(a, b)
class(c)

d <- "4"
class(d)


# 문제 3
v1 <- c(6, 1, 3, 7, 9)
v2 <- c(9, 1, 0, 3, 7)

v1 + v2
v1 * 2
v2 - 3
3 * v1 - v2
v2 + c(1, 2, -1, 3, -5)


# 문제 4
a <- 25:150
condi <- a[(a %% 3 == 0) & (a <= 100)]
length(condi)


# 문제 5
a <- c("good", "great", "bad", "okay", "good", "bad", "good")
f <- factor(a)
levels(f)


# 문제 6
items <- c(76000, 52000, 36000)
sales <- c(5, 10, 5)
sum(items * (1 - sales / 100))


# 문제 7
smartphone <- list(model = "iphone_se",
                   capacity = c(64, 128, 256),
                   display = "Retina",
                   color = c("black", "red", "white"))
smartphone$color


# 문제 8
weight <- c(56, 23, 89, 46, 76, 14, 97, 72, 68, 62, 35)
names(weight) <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k')
sort(weight[weight > (sum(weight) - 600)])[1]


# 문제 9
favorite <- factor(c("여름", "봄", "여름", "겨울", "봄", "겨울", "여름", "여름", "봄", "가을"))
levels(favorite)


# 문제 10
country <- factor(c("호주", "독일", "영국", "일본", "미국", "중국", "호주", "영국", "중국", "일본",
                    "터키", "미국", "중국", "중국", "호주", "터키", "독일", "일본", "중국", "독일"))
levels(country)
as.integer(country)


# 문제 11
post <- list(user_id="mr_steve",
             post_id="p11010",
             view=37,
             image=F,
             like=c("creeper", "alex", "skeleton", "enderman"))
post


# 문제 12
account <- list(name="하늘",
                number="123-456-120566",
                balance=4128750,
                history=c(-50000, +20000, -32500, -79000, +42000))
length(account$history[account$history>0])
length(account$history[account$history<0])
