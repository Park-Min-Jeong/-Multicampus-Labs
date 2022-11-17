# 문제1
v <- sample(1:26, 10)
v
sapply(v, function(i) return(LETTERS[i]))


# 문제2
df <- read.table("data/product_click.log")
colnames(df) <- c("clicktime", "pid") # dataframe에서는 names 사용해도 됨
str(df)
View(df)

clickDate <- as.Date(as.character(df$clicktime), format="%Y%m%d") 
# strptime 사용하면 자동으로 character형으로 변환
# strptime(df$clicktime, format="%Y%m%d")
df$clickday <- weekdays(clickDate)
str(df)
View(df)

names(which.max(table(df$clickday)))


# 문제3
memo <- readLines("data/memo.txt")
memo

memo_new <- NULL
appendToMemoNew <- function(item) {
  memo_new <<- append(memo_new, item)
}

appendToMemoNew(gsub("[[:punct:]]\\<", "", memo[1]))
appendToMemoNew(toupper(memo[2]))
appendToMemoNew(gsub("[[:digit:]]", "", memo[3]))
appendToMemoNew(gsub("  ", " ", gsub("[A-z]", "", memo[4]))) 
# [A-Za-z]로 해야함, [A-z]이면 대문자와 소문자 사이에 다른 특수 문자가 있음
appendToMemoNew(gsub("[0-9<>!]", "", memo[5]))
appendToMemoNew(gsub("[[:space:]]", "", memo[6]))

memo_new

write(memo_new, "data/memo_new.txt")
