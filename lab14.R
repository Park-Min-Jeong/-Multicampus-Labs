library(ggplot2)
library(treemap)
library(showtext)

# font
showtext_auto() 
font_add(family = "cat", regular = "fonts/HoonWhitecatR.ttf")
font_add(family = "dog", regular = "fonts/THEdog.ttf")
font_add(family = "maple", regular = "fonts/MaplestoryBold.ttf")

## answer: 폰트 사이즈 조정
# showtext_opts(dpi=75)


# 문제 1
student <- read.csv("data/score.csv")
student$class <- factor(student$class)

ggplot(student, aes(x=math, y=science, col=class)) + 
  geom_point() #+ theme(text=element_text(size=30)) # 이미지에서 폰트 사이즈가 너무 작아서 조정

ggsave("output/result1.png")

## answer
ggplot(student, aes(x=math, y=science, col=class)) + geom_point(aes(color=class)) 


# 문제 2
mpg <- as.data.frame(mpg)

ggplot(mpg, aes(x=class, fill=drv)) + 
  geom_bar() #+ theme(text=element_text(size=30)) # 이미지에서 폰트 사이즈가 너무 작아서 조정

ggsave("output/result2.png")


# 문제 3
product_click <- read.table("data/product_click.log")
names(product_click) <- c("clicktime", "pid")

ggplot(product_click, aes(x=pid, fill=pid)) + 
  geom_bar() + 
  labs(x="상품ID", y="클릭수", title="제품당 클릭수", subtitle="제품당 클릭수를 바그래프로 표현") + 
  theme_bw() +
  theme(text=element_text(family="cat"))#, size=30)) # 이미지에서 폰트 사이즈가 너무 작아서 조정

ggsave("output/result3.png")


# 문제 4
data(GNI2014)

treemap(GNI2014, 
        vSize="population", 
        index=c("continent", "iso3"),
        title="전세계 인구 정보", 
        fontfamily.title="maple", 
        fontsize.title=20,
        border.col="green")

dev.copy(png, "output/result4.png", width=1000, height=600)
dev.off()
