library(RSelenium)
remDr <- remoteDriver(remoteServerAddr="localhost" , 
                      port=4445, browserName="chrome")
remDr$open()

url <- "https://www.megabox.co.kr/movie-detail/comment?rpstMovieNo=21049700"
remDr$navigate(url)

Sys.sleep(3)

moviePoint <- NULL
movieRecommend <- NULL
movieText <- NULL

crr_pageNum <- NULL

for (i in 1:10) {
  
  pointElements <- remDr$findElements(using="css selector", "li.oneContentTag div.story-point span")
  points <- sapply(pointElements, function(x){x$getElementText()})
  
  recommendElements <- remDr$findElements(using="css selector", "li.oneContentTag div.story-recommend")
  recommends <- sapply(recommendElements, function(x){x$getElementText()})
  
  textElements <- remDr$findElements(using="css selector", "li.oneContentTag div.story-txt")
  texts <- sapply(textElements, function(x){x$getElementText()})
  
  moviePoint <- append(moviePoint, unlist(points))
  movieRecommend <- append(movieRecommend, unlist(recommends))
  movieText <- append(movieText, unlist(texts))
  
  # 페이지 이동
  crr_pageElement <- remDr$findElement(using="css selector", "nav.pagination strong")
  crr_pageNum <- as.numeric(crr_pageElement$getElementText())
  if (crr_pageNum==10) {
    break
  }
  nextPage <- remDr$findElement(using="css selector", paste0("nav.pagination a:nth-child(", crr_pageNum+1, ")"))
  nextPage$clickElement()
  Sys.sleep(2)
}

movie <- data.frame(moviePoint, movieRecommend, movieText)
str(movie)
View(movie)
write.csv(movie, "output/movie.csv")
