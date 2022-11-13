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

# 1-6
mpg %>% summary()

# 1-7
mpg %>% count(manufacturer)

# 1-8
mpg %>% count(manufacturer, model)


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

# 3-2
mpg %>% 
  filter(manufacturer %in% c("audi", "toyota")) %>% 
  group_by(manufacturer) %>%
  summarise(m_cty = mean(cty)) %>% 
  pull(m_cty) -> m_cty
cat("audi 자동차의 도시 연비 평균:", m_cty[1])
cat("toyota 자동차의 도시 연비 평균:", m_cty[2])

# 3-3
mpg %>% 
  filter(manufacturer %in% c("chevrolet", "ford", "honda")) %>% 
  summarise(m2_hwy = mean(hwy)) %>% 
  pull(m2_hwy) -> m2_hwy
cat("chevrolet, ford, honda 자동차의 고속도로 연비 평균:", m2_hwy)


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

# 그림 4: 결측치 처리
score %>%
  fill(국어, 수학, .direction="updown") -> score
View(score)
