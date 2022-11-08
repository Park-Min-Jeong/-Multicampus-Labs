library(RSelenium)
remDr <- remoteDriver(remoteServerAddr="localhost", port=4445, browserName="chrome")
remDr$open()
url <- "http://gs25.gsretail.com/gscvs/ko/products/event-goods"
remDr$navigate(url)
Sys.sleep(3)

goodsname <- NULL
goodsprice <- NULL

currentPageNum <- 0
previousPageNum <- 0

# click event
twotooneTab <- remDr$findElement(using="css selector", "#TWO_TO_ONE")
twotooneTab$clickElement()
Sys.sleep(3)


repeat {
  # current page
  currentPage <- remDr$findElement(using="css selector", "#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > div > span > a.on")
  currentPageNum <- as.numeric(currentPage$getElementText())
  if (previousPageNum == currentPageNum) {
    cat("finish\n")
    break
  }
  
  
  # goods data
  nameElement <- remDr$findElements(using="css selector", "#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > ul > li > div > p.tit")
  name <- unlist(sapply(nameElement, function(x){x$getElementText()}))
  
  priceElement <- remDr$findElements(using="css selector", "#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > ul > li > div > p.price > span")
  price <- unlist(sapply(priceElement, function(x){x$getElementText()}))
  price <- as.numeric(gsub(",|원", "", price))

  goodsname <- append(goodsname, name)
  goodsprice <- append(goodsprice, price)
  
  cat("Processing...", currentPageNum, "page\n")
  
  
  # next page
  previousPageNum <- currentPageNum
  nextPage <- remDr$findElement(using="css selector", "#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > div > a.next")
  nextPage$clickElement()
  Sys.sleep(2)
}

gs25_twotoone <- NULL
gs25_twotoone <- data.frame(goodsname, goodsprice)
str(gs25_twotoone)
View(gs25_twotoone)
write.csv(gs25_twotoone, "output/gs25_twotoone.csv")
