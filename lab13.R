library(dplyr)
library(tidyr)


##### 문제1 #####
mpg <- as.data.frame(ggplot2::mpg)
# 1-1
mpg %>% str()

# 1-2
mpg %>% dim()

# 1-3
mpg %>% head(10)

# 1-4
mpg %>% tail(10)

# 1-5
mpg %>% View()
## spreadsheet-style data viewer

# 1-6
mpg %>% summary()

# 1-7
mpg %>% count(manufacturer)
## answer
mpg %>%
  group_by(manufacturer) %>%
  tally()

# 1-8
mpg %>% count(manufacturer, model)
## answer
mpg %>%
  group_by(manufacturer, model) %>%
  tally()


##### 문제2 #####
# 2-1
mpg %>% rename(city=cty, highway=hwy) -> mpg_copy

# 2-2
mpg_copy %>% head(6)


##### 문제3 #####
# 3-1
mpg %>% 
  group_by(displ >= 5) %>% 
  summarise(m_hwy = mean(hwy)) %>%
  pull(m_hwy) -> m_hwy
cat("배기량이 4 이하인 자동차의 고속도로 연비 평균:", m_hwy[1])
cat("배기량이 5 이상인 자동차의 고속도로 연비 평균:", m_hwy[2])

## answer
mpg %>%
  filter(displ <= 4) %>%
  summarise(n = mean(hwy))
mpg %>%
  filter(displ >= 5) %>%
  summarise(n = mean(hwy))


# 3-2
mpg %>% 
  filter(manufacturer %in% c("audi", "toyota")) %>% 
  group_by(manufacturer) %>%
  summarise(m_cty = mean(cty)) %>% 
  pull(m_cty) -> m_cty
cat("audi 자동차의 도시 연비 평균:", m_cty[1])
cat("toyota 자동차의 도시 연비 평균:", m_cty[2])

## answer
mpg %>%
  filter(manufacturer == "audi") %>%
  summarise(n = mean(cty))
mpg %>%
  filter(manufacturer == "toyota") %>%
  summarise(n = mean(cty))


# 3-3
mpg %>% 
  filter(manufacturer %in% c("chevrolet", "ford", "honda")) %>% 
  summarise(m2_hwy = mean(hwy)) %>% 
  pull(m2_hwy) -> m2_hwy
cat("chevrolet, ford, honda 자동차의 고속도로 연비 평균:", m2_hwy)

## answer
mpg %>% 
  filter(manufacturer %in% c("chevrolet", "ford", "honda")) %>% 
  summarise(n = mean(hwy))


##### 문제4 #####
# 4-1
mpg %>%
  select(class, cty) -> mpg2

mpg2 %>% head(5)

# 4-2
mpg2 %>%
  group_by(class) %>%
  summarise(m_cty = mean(cty)) %>%
  filter(class %in% c("suv", "compact")) %>%
  filter(m_cty == max(m_cty)) %>%
  pull(class)
## answer
mpg2 %>%
  filter(class == "suv") %>%
  summarise(mean_suv = mean(cty))
mpg2 %>%
  filter(class == "compact") %>%
  summarise(mean_compact = mean(cty))


##### 문제5 #####
mpg %>%
  filter(manufacturer == "audi") %>%
  arrange(desc(hwy)) %>%
  head(5)


##### 문제6 #####
score <- read.csv("data/성적2.csv")

# 그림 1
View(score)

# 그림 2
boxplot(score[3:4])

# 그림 3: 이상치 -> 평균
outliers <- boxplot.stats(score$수학)$out
score$수학 <- ifelse(score$수학 %in% outliers, 
                     round(mean(score$수학, na.rm=T)), 
                     score$수학)
View(score)
## answer
outliers <- function(qnum) {
  Q1 <- qnum[2]
  Q3 <- qnum[4]
  lower <- Q1 - 1.5 * (Q3 - Q1) # 아래 울타리
  upper <- Q3 + 1.5 * (Q3 - Q1) # 위 울타리
  return(c(lower, upper))
}
lu <- outliers(boxplot.stats(score$수학)$stats)
meanmath <- round(mean(score$수학, na.rm=T))
ifelse(score$수학 > lu[2], meanmath, score$수학)

# 그림 4: 결측치 처리
score %>%
  fill(국어, 수학, .direction="updown") -> score
View(score)
