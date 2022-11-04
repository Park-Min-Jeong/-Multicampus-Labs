library(rvest)

url <- "https://news.daum.net/"
html <- read_html(url)

newscategory <- NULL
newstitle <- NULL


for (i in 1:20) {
  node_cate <- html_node(html, paste0("ul.list_newsissue li:nth-child(", i, ") span.txt_category"))
  category <- html_text(node_cate)
  
  node_title <- html_node(html, paste0("ul.list_newsissue li:nth-child(", i, ") a.link_txt"))
  title <- html_text(node_title, trim=T)
  title <- gsub('\"', "'", title)
  
  newscategory[i] <- category
  newstitle[i] <- title
  
}


daumnews <- data.frame(newscategory, newstitle)
View(daumnews)
write.csv(daumnews, "output/daumnews.csv")


## answer
### for & html_node 대신 html_nodes 사용
### \"는 그대로 둬야 함 -- 웹에서 "를 표현하는 방식

node_cate <- html_nodes(html, "ul.list_newsissue span.txt_category")
newscategory <- html_text(node_cate)

node_title <- html_nodes(html, "ul.list_newsissue a.link_txt")
newstitle <- html_text(node_title, trim=T)

daumnews <- data.frame(newscategory, newstitle)
View(daumnews)
write.csv(daumnews, "output/daumnews2.csv")
