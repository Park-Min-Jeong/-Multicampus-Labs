##### 문제1 #####
str(iris)


##### 문제2 #####
df1 <- data.frame(x=c(1:5))
df1$y <- df1$x*2
df1

## case1
df1 <- data.frame(x=seq(1,5,1),
                  y=seq(2,10,2))
df1

## case2
x <- seq(1,5,1)
y <- seq(2,10,2)
df1 <- data.frame(x=x,
                  y=y)
df1


##### 문제3 #####
df2 <- data.frame(col1=1:5,
                  col2=letters[1:5],
                  col3=6:10)
df2
## --> case1

## case2
col1 <- 1:5
col2 <- letters[1:5]
col3 <- 6:10
df2 <- data.frame(col1=col1,
                  col2=col2,
                  col3=col3)
df2


##### 문제4 #####
제품명 <- c("사과", "딸기", "수박")
가격 <- c(1800, 1500, 3000)
판매량 <- c(24, 38, 13)

df3 <- data.frame(제품명=제품명,
                  가격=가격,
                  판매량=판매량,
                  stringsAsFactors=F)
df3
# summary(df3)
str(df3)
## --> case2

## case1
df3 <- data.frame(제품명=c("사과", "딸기", "수박"),
                  가격=c(1800, 1500, 3000),
                  판매량=c(24, 38, 13))
df3
str(df3)


##### 문제5 #####
mean(df3$가격)
mean(df3$판매량)


##### 문제6 #####
name <- c("Potter", "Elsa", "Gates", "Wendy", "Ben")
gender <- factor(c("M", "F", "M", "F", "M"))
math <- c(85, 76, 99, 88, 40)

df4 <- data.frame(name=name,
                  gender=gender,
                  math=math)
str(df4)

## a
stat <- c(76, 73, 95, 82, 35)
df4$stat <- stat
df4
### --> case2
### case1
df4$stat <- c(76, 73, 95, 82, 35)
df4

## b
df4$score <- df4$math+df4$stat
df4

## c
df4$grade <- ifelse(df4$score>=150, "A",
                    ifelse(df4$score>=100, "B",
                           ifelse(df4$score>=70, "C", "D")))
df4


##### myemp #####
myemp <- read.csv("data/emp.csv")


# 문제7: 데이터프레임 객체 구조 점검
str(myemp)


### 출력 ###
# 문제8: 3행, 4행, 5행 출력
myemp[3:5,]


# 문제9: 사번열 제외하고 출력
myemp[-4]

## answer
myemp[-1]
myemp[2:8]


# 문제10: ename 컬럼만 출력
myemp["ename"]  # 데이터프레임 구조 유지

myemp$ename     # 벡터 형식
myemp[,"ename"] # 벡터 형식


# 문제11: ename과 sal 컬럼만 출력
myemp[c("ename","sal")]


### 조건식 ###
# 문제12: 직무가 SALESMAN 인 사원의 이름, 월급, 직업
subset(myemp, job=="SALESMAN", c("ename","sal","job"))

## answer
myemp[myemp$job=="SALESMAN", c("ename","sal","job")]


# 문제13: 월급이 1000 이상이고 3000 이하인 사원의 이름, 월급, 부서번호
subset(myemp, sal>=1000 & sal<=3000, c("ename", "sal", "deptno"))


# 문제14: 직무가 ANALYST 가 아닌 사원의 이름, 직업, 월급
subset(myemp, job!="ANALYST", c("ename","job","sal"))


# 문제15: 직무가 SALESMAN 이거나 ANALYST 인 사원의 이름, 직업
subset(myemp, job=="SALESMAN" | job=="ANALYST", c("ename","job"))


# 문제16: 커미션이 정해지지 않은 사원의 이름과 월급
subset(myemp, is.na(myemp$comm), c("ename", "sal"))


# 문제17: 월급이 적은 순으로 모든 직원 정보 출력
myemp[order(myemp$sal),]


# 문제18: 행과 열의 개수 점검
dim(myemp)


### character형 개수 출력 ###
# 문제19: 부서별 직원이 몇 명인지 출력
myemp$deptno <- as.factor(myemp$deptno)
table(myemp$deptno)

## answer
summary(as.factor(myemp$deptno))
table(myemp$deptno)


# 문제20: 직무별 직원이 몇 명인지 출력
myemp$job <- as.factor(myemp$job)
table(myemp$job)

## answer
summary(as.factor(myemp$job))
table(myemp$job)

# table: factor형, character형 상관 없이 개수 출력
## table 사용 시 변환 필요 없음

# summary: factor형은 개수, character형은 길이 출력
