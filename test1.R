data <- scan("data/iotest1.txt")
data

cat("오름차순:", sort(data))
cat("내림차순:", sort(data,decreasing=T))
cat("합:", sum(data))
cat("평균:", mean(data))
