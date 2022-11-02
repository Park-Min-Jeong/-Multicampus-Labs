data <- scan("data/iotest2.txt", what="")
data

most <- names(sort(table(data), decreasing=T)[1])

cat("가장 많이 등장한 단어는", most, "입니다.")


## answer
### which.max 활용
most <- names(which.max(table(data)))

cat("가장 많이 등장한 단어는", most, "입니다.")
