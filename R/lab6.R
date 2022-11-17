# 문제1
countEvenOdd <- function(nums) {
  if (is.numeric(nums)) {
    evenOdd <- table(nums%%2)
    names(evenOdd) <- NULL
    return(list(even=evenOdd[1], odd=evenOdd[2]))
  } else {
    return(NULL)
  }
}
countEvenOdd(c(1:5))
countEvenOdd(c("a", "b", "c"))

## answer
### 벡터 여부 체크 필요
countEvenOdd2 <- function(p) {
  if(is.vector(p) && !is.list(p) && is.numeric(p)) {
    even <- 0; odd <- 0;
    for (item in p) {
      ifelse(item%%2==0, even<-even+1, odd<-odd+1)
    }
    return(list(even=even, odd=odd))
  } else {
    return()
  }
}
countEvenOdd2(1:10)
countEvenOdd2(c(1,2,3,4,5))
countEvenOdd2(LETTERS)
countEvenOdd2(list(1,2,3,4,5))
countEvenOdd2(matrix(1:9, nrow=3))


# 문제2
vmSum <- function(x) {
  if (is.vector(x) && !is.list(x)) {
    if (is.numeric(x)) {
      return(sum(x))
    } else {
      cat("숫자 벡터를 전달하숑!\n")
      return(0)
    }
  } else {
    return("벡터만 전달하숑!")
  }
}
vmSum(c(1:5))
vmSum(c("a", "b", "c"))
vmSum(c(1, 2, "a")) # become character vector
vmSum(matrix())


# 문제3
vmSum2 <- function(x) {
  if (is.vector(x) && !is.list(x)) {
    if (is.numeric(x)) {
      return(sum(x))
    } else {
      warning("숫자 벡터를 전달하숑!")
      return(0)
    }
  } else {
    stop("벡터만 전달하숑!")
  }
}
vmSum2(c(1:5))
vmSum2(c("a", "b", "c"))
vmSum2(c(1, 2, "a")) # become character vector
vmSum2(matrix())


# 문제4
mySum <- function(x) {
  if (is.vector(x) && !is.list(x)) {
    if (any(is.na(x))) {
      warning("NA를 최저값으로 변경하여 처리함!!!")
      x[is.na(x)] <- min(x, na.rm=T)
    }
    return(list(oddSum=sum(x[seq(1,length(x),2)]), 
                evenSum=sum(x[seq(0,length(x),2)])))
  } else if (is.null(x)) {
    return(NULL)
  } else {
    stop("벡터만 처리 가능!!")
  }
}
mySum(matrix())
mySum(c(1:5))
mySum(c(1, 2, NA, 3, 4))
mySum(NULL)


# 문제5
myExpr <- function(x) {
  if (is.function(x)) {
    return(x(sample(1:45, 6)))
  } else {
    stop("수행 안할꺼임!!")
  }
}
myExpr(mean)
myExpr(sum)
myExpr("a")


# 문제6
createVector1 <- function(...) {
  p <- c(...)
  if (is.null(p)) { # length(p)==0
    return(NULL)
  } else if (any(is.na(p))) {
    return(NA)
  } else {
    return(p)
  }
}

## NULL
createVector1()
createVector1(NULL)

## NA
createVector1(NA)
createVector1(1, NA)

createVector1(1, 2)
createVector1("a", 9, T)


# 문제7
createVector2 <- function(...) {
  p <- list(...)
  if (is.null(unlist(p))) { # length==0
    return(NULL)
  } else {
    result <- list(character=c(), numeric=c(), logical=c())

    for (i in 1:length(p)) {
      item <- unlist(p[i])
      switch(EXPR=class(item), 
             "character"=result$character <- c(result$character,item),
             "numeric"=result$numeric <- c(result$numeric,item),
             "logical"=result$logical <- c(result$logical,item))
    }
    return(result)
  }
}

## NULL
createVector2()
createVector2(NULL)

createVector2("a", 9, T, "z", F, "c", 11)


## answer
### length 사용
### for 정리
createVector2 <- function(...) {
  p <- list(...)
  if (length(p)==0) {
    return(NULL)
  } else {
    result <- list(character=c(), numeric=c(), logical=c())
    
    for (item in p) {
      switch(EXPR=class(item), 
             "character"=result$character <- c(result$character,item),
             "numeric"=result$numeric <- c(result$numeric,item),
             "logical"=result$logical <- c(result$logical,item))
    }
    return(result)
  }
}
createVector2()
# createVector2(NULL) -- length가 1..
createVector2("a", 9, T, "z", F, "c", 11)

### vector -> list
createVector2 <- function(...) {
  p <- list(...)
  chr <- c(); num <- c(); logi <- c();
  if (length(p)==0) {
    return(NULL)
  } else {
    for (item in p) {
      if (is.character(item)) chr <- append(chr, item)
      else if (is.numeric(item)) num <- append(num, item)
      else if (is.logical(item)) logi <- append(logi, item)
    }
    return(list(character=chr, numeric=num, logical=logi))
  }
}
createVector2()
createVector2("a", 9, T, "z", F, "c", 11)
