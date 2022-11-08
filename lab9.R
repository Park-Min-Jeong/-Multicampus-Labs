library(RSelenium)
remDr <- remoteDriver(remoteServerAddr="localhost" , 
                      port=4445, browserName="chrome")
remDr$open()

url <- "https://www.megabox.co.kr/movie-detail/comment?rpstMovieNo=21049700"
remDr$navigate(url)

Sys.sleep(3)


moviePoint <- NULL
movieRecommend1 <- NULL
movieRecommend2 <- NULL
movieText <- NULL

# 첫 페이지로 이동
crr_pageElement <- remDr$findElement(using="css selector", "nav.pagination strong")
crr_pageNum <- as.numeric(crr_pageElement$getElementText())
if (crr_pageNum!=1) {
  nextPage <- remDr$findElement(using="css selector", paste0("nav.pagination a:nth-child(1)"))
  nextPage$clickElement()
  Sys.sleep(2)
}

repeat {
  # point
  pointElements <- remDr$findElements(using="css selector", "li.oneContentTag div.story-point span")
  points <- unlist(sapply(pointElements, function(x){x$getElementText()}))
  
  # recommend
  ## case 1: 태그를 이어서
  recommendElements <- remDr$findElements(using="css selector", "li.oneContentTag div.story-recommend")
  recommends1 <- unlist(sapply(recommendElements, function(x){x$getElementText()}))
  
  ## case 2: 태그를 나눠서
  recommendElementsFirst <- remDr$findElements(using="css selector", "li.oneContentTag div.story-recommend em:first-child")
  rFirst <- unlist(sapply(recommendElementsFirst, function(x){x$getElementText()}))
  recommendElementsLast <- remDr$findElements(using="css selector", "li.oneContentTag div.story-recommend em:last-child")
  rLast <- unlist(sapply(recommendElementsLast, function(x){x$getElementText()}))
  recommends2 <- ifelse(rFirst==rLast, rFirst, paste(rFirst, rLast, sep="&"))
  
  
  # text
  textElements <- remDr$findElements(using="css selector", "li.oneContentTag div.story-txt")
  texts <- unlist(sapply(textElements, function(x){x$getElementText()}))
  
  
  # append to vector
  moviePoint <- append(moviePoint, points)
  movieRecommend1 <- append(movieRecommend1, recommends1)
  movieRecommend2 <- append(movieRecommend2, recommends2)
  movieText <- append(movieText, texts)
  
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

movie <- NULL
movie <- data.frame(moviePoint, movieRecommend1, movieRecommend2, movieText)
str(movie)
View(movie)
write.csv(movie, "output/movie.csv")
