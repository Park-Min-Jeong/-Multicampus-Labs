library(RSelenium)
remDr <- remoteDriver(remoteServerAddr="localhost", port=4445, browserName="chrome")
remDr$open()
url <- "http://gs25.gsretail.com/gscvs/ko/products/event-goods"
remDr$navigate(url)
Sys.sleep(3)

goodsname <- NULL
goodsprice <- NULL

# click event
twotooneTab <- remDr$findElement(using="css selector", "#TWO_TO_ONE")
twotooneTab$clickElement()
Sys.sleep(3)


repeat {
  # goods data
  nameElement <- remDr$findElements(using="css selector", "#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > ul > li > div > p.tit")
  name <- unlist(sapply(nameElement, function(x){x$getElementText()}))
  
  priceElement <- remDr$findElements(using="css selector", "#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > ul > li > div > p.price > span")
  price <- unlist(sapply(priceElement, function(x){x$getElementText()}))
  price <- as.numeric(gsub(",|원", "", price))
  
  goodsname <- append(goodsname, name)
  goodsprice <- append(goodsprice, price)
  
  # next page
  nextPage <- remDr$findElement(using="css selector", "#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > div > a.next")
  if (length(nextPage$getElementAttribute("onclick"))==0) {
    cat("finish\n")
    break
  }
  nextPage$clickElement()
  Sys.sleep(2)
}

gs25_twotoone <- NULL
gs25_twotoone <- data.frame(goodsname, goodsprice)
str(gs25_twotoone)
View(gs25_twotoone)
write.csv(gs25_twotoone, "output/gs25_twotoone.csv")
