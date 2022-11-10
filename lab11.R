# font
library(showtext)
showtext_auto() 
font_add(family="cat", regular="fonts/HoonWhitecatR.ttf")
font_add(family="dog", regular="fonts/THEdog.ttf")
font_add(family="maple", regular="fonts/MaplestoryBold.ttf")

# product_click.log 불러오기
product_click <- read.table("data/product_click.log")
colnames(product_click) <- c("clicktime", "pid")
str(product_click)

# 성적.txt 불러오기
성적 <- read.csv("data/성적.txt", sep="\t")
str(성적)

# color
library(RColorBrewer)



# 문제1
barplot(table(product_click$pid),
        main="세로바 그래프 실습",
        xlab="상품ID",
        ylab="클릭수",
        family="dog",
        col=terrain.colors(10),
        col.main="red")

dev.copy(png, "output/clicklog1.png") 
dev.off()


# 문제2
clickhour <- table(as.POSIXlt(as.character(product_click$clicktime), format="%Y%m%d%H%M")$hour)
hour <- as.numeric(names(clickhour))

pie(clickhour,
    main="파이그래프 실습",
    labels=paste0(hour, "~", hour+1),
    family="maple",
    col=brewer.pal(17,"Set3"),
    col.main="blue")

dev.copy(png, "output/clicklog2.png") 
dev.off()


# 문제3
maple <- par(family="maple")

boxplot(성적[,3:5],
        main="과목별 성적 분포",
        col=rainbow(3),
        col.main="orange")

dev.copy(png, "output/clicklog3.png") 
dev.off()

par(maple)


# 문제4
name <- 성적$성명

barplot(t(성적[,3:5]),
        main="학생별 점수",
        names.arg=name,
        family="dog",
        col=brewer.pal(3,"Pastel1"),
        col.main="magenta",
        cex.main=2)

legend(x="topright", 
       legend=names(성적[,3:5]), 
       fill=brewer.pal(3,"Pastel1"))

dev.copy(png, "output/clicklog4.png") 
dev.off()

# legend 잘리는 것
dev.copy(png, "output/clicklog4_2.png", height=500, width=700) 
dev.off()
