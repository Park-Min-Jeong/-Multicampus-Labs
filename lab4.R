# 문제1
## named list
L1 <- list(name="scott", 
           sal=3000)
L1

result1 <- L1$sal*2 # L1[["sal"]]*2
result1


# 문제2
## unnamed list
L2 <- list("scott", 
           1:3*100) # c(100,200,300), seq(100,300,100)
L2


# 문제3
L3 <- list(c(3,5,7), # seq(3,7,2)
           c("A","B","C"))
L3[[2]][1] <- "Alpha"
L3[[2]][1]
L3


# 문제4
L4 <- list(alpha=0:4, 
           beta=sqrt(1:5), 
           gamma=log(1:5))
L4$alpha+10 # L4[[1]]+10, L4[["alpha"]]+10


# 문제5
L5 <- list(data1=LETTERS,
           data2=read.csv("data/emp.csv")[1:3,], # head(read.csv("data/emp.csv"), 3)
           data3=L4)

L5

L5$data1[1] # L5[["data1"]][1]
L5$data2$ename
L5$data3$gamma 


# 문제6
L6 <- list(math=list(95,90), 
           writing=list(90,85), 
           reading=list(85,80))
mean(unlist(L6))


# 문제7
grade <- sample(1:6, 1)

## if-else
if (grade<=3) {
  cat(grade, "학년은 저학년입니다.", "\n")
} else {
  cat(grade, "학년은 고학년입니다.", "\n")
}

## switch
cat(grade, "학년은", switch(EXPR=(grade%/%4)+1, "저학년입니다.", "고학년입니다."), "\n")

## ifelse
cat(grade, "학년은", ifelse(grade<=3, "저학년입니다.", "고학년입니다."), "\n")


# 문제8
choice <- sample(1:5, 1)

## if-else
if (choice==1) {
  result <- 300+50
} else if (choice==2) {
  result <- 300-50
} else if (choice==3) {
  result <- 300*50
} else if (choice==4) {
  result <- 300/50
} else {
  result <- 300%%50
}
cat("결과값:", result, "\n")

## switch
result <- switch(EXPR=choice,
                 300+50, 300-50, 300*50, 300/50, 300%%50)
cat("결과값:", result, "\n")


# 문제9
count <- sample(3:10, 1)
deco <- sample(1:3, 1)

## if-else
if (deco==1) {
  target <- "*"
} else if (deco==2) {
  target <- "$"
} else {
  target <- "#"
}
for (i in 1:count) {
  cat(target)
}

## switch
target <- switch(EXPR=deco,
                 "*", "$", "#")
for (i in 1:count) {
  cat(target)
}

## 다른 출력 방식
cat(rep(target, count), sep="")


# 문제10
score <- sample(0:100, 1)
level <- switch(EXPR=as.character(score%/%10),
                "10"=,"9"="A",
                "8"="B",
                "7"="C",
                "6"="D",
                "F")
cat(score, "점은", level, "등급입니다.")

## answer
level <- switch(EXPR=as.character(score%/%10),
                "10"=,"9"="A 등급",
                "8"="B 등급",
                "7"="C 등급",
                "6"="D 등급",
                "F 등급")
cat(score, "점은", level, "입니다.") # "입니다." 앞에 공백 없앨 방법?
        

# 문제11
alpha <- paste(LETTERS, letters, sep="")
alpha

## answer
### paste0 함수 - 공백을 주지 않음
alpha <- paste0(LETTERS, letters) 
alpha

## for 활용
for (i in 1:length(letters)){
  cat(LETTERS[i], letters[i], sep="", end=" ")
}
