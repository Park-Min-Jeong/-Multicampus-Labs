# 교재 277 - 279

# 문제 1
n <- 12
if (n %% 2 == 1) {
  type <- "odd"
} else {
  type <- "even"
}
print(type)


# 문제 2
res <- ifelse(n < 0, -n, n)
res


# 문제 3
input <- 1:10
n <- length(input)
switch <- FALSE
result <- 1

if (switch == T) {
  for (i in 1:n) {
    result <- result * input[i]
  } 
} else {
  result <- sum(input)
}

print(result)


# 문제 4
result <- 1
for (i in seq(1, 20, 2)) {
  result <- result * i
}
print(result)


# 문제 5
i <- 1
result <- 1
while (i <= 20) {
  if (i %% 2 == 1) {
    result <- result * i
  }
  i <- i + 1
}
print(result)


# 문제 6
data(mtcars)
apply(mtcars[c("mpg", "hp", "wt")], 2, mean)


# 문제 7
triangle.area <- function(base, height) {
  return(base * height / 2)
}

triangle.area(5.2, 4.6)


# 문제 8
multiple.answer <- function(data) {
  res.min <- min(data)
  res.max <- max(data)
  res.avg <- mean(data)
  result <- data.frame(min=res.min, max=res.max, avg=res.avg)
}
data <- c(1, 3, 5, 7, 9)
result <- multiple.answer(data)
cat("min: ", result$min, ", max: ", result$max, ", avg: ", result$avg,  "\n")


# 문제 9
data(mtcars)
mtcars[which.max(mtcars$mpg),]
mtcars[which.min(mtcars$mpg),]


# 문제 11
fiv <- c(0, 1)
for (i in 3:20) {
  new <- fiv[length(fiv)-1] + fiv[length(fiv)]
  fiv <- append(fiv, new)
}
fiv


# 문제 12
data(USArrests)
str(USArrests)

apply(USArrests[c("Murder", "Assault", "Rape")], 2, sum)

apply(USArrests[c("Murder", "Assault", "Rape")], 2, mean)

rownames(USArrests[which.max(USArrests$Murder),])

USArrests[which.min(USArrests$Assault),"Murder"]
