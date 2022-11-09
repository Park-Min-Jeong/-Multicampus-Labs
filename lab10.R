# 문제1
v <- sample(1:26, 10)
v
sapply(v, function(i) return(LETTERS[i]))


# 문제2
df <- read.table("data/product_click.log")
colnames(df) <- c("clicktime", "pid")
str(df)
View(df)

clickDate <- as.Date(as.character(df$clicktime), format="%Y%m%d")
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
?gsub
appendToMemoNew(gsub("[[:punct:]]\\<", "", memo[1]))
appendToMemoNew(toupper(memo[2]))
appendToMemoNew(gsub("[[:digit:]]", "", memo[3]))
appendToMemoNew(gsub("  ", " ", gsub("[A-z]", "", memo[4])))
appendToMemoNew(gsub("[0-9<>!]", "", memo[5]))
appendToMemoNew(gsub("[[:space:]]", "", memo[6]))

memo_new

write(memo_new, "data/memo_new.txt")
