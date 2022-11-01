# 문제1
exam1 <- function() {
  return(paste0(LETTERS, letters))
}

exam1()


# 문제2
exam2 <- function(num) {
  if(is.numeric(num))
    return(sum(1:num))
}

exam2(10)
exam2(5)

exam2("a")


# 문제3
exam3 <- function(n1, n2) {
  if(is.numeric(n1) & is.numeric(n2)) 
    return(max(n1,n2)-min(n1, n2))
}

exam3(10,20)
exam3(20,5)
exam3(5,30)
exam3(6,3)
exam3(3,3)

exam3("a",1)
exam3(1, "b")
exam3("a","b")


# 문제4
exam4 <- function(n1, oper, n2) {
  if(is.numeric(n1) & is.numeric(n2))
    return(switch(EXPR=oper,
                  "+"=n1+n2,
                  "-"=n1-n2,
                  "*"=n1*n2,
                  "%/%"=ifelse(n1==0, "오류1", ifelse(n2==0, "오류2", n1%/%n2)),
                  "%%"=ifelse(n1==0, "오류1", ifelse(n2==0, "오류2", n1%%n2)),
                  "규격의 연산자만 전달하세요."))
}
exam4(20,"+",6)
exam4(20,"-",6)
exam4(20,"*",6)
exam4(20,"%/%",6)
exam4(20,"%%",6)
exam4(20,"^",6)

exam4(0,"%/%",6)
exam4(0,"%%",6)
exam4(20,"%/%",0)
exam4(20,"%%",0)

exam4("a","+","b")


# 문제5
exam5 <- function(count, target="#") {
  if(is.numeric(count) & count>=0)
    cat(rep(target, count), sep="", end="\n")
  return()
}

exam5(4)
exam5(-4)
exam5(7,"&")


# 문제6
exam6 <- function(...) {
  score <- c(...)
  for(item in score) {
    if(is.na(item))
      cat("NA는 처리불가", "\n")
    else if(is.numeric(item)) 
      cat(item, "점은", ifelse(item>=85, "상", ifelse(item>=70, "중", "하")), "등급입니다.", "\n")
  }
}

exam6(c(100, 85, 84, NA, 70, 69))
exam6(c(NA, "a"))
