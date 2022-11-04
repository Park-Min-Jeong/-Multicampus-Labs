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

