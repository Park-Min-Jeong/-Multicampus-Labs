library(rvest)

comicName <- NULL
comicSummary <- NULL
comicGrade <- NULL

for (i in 1:20) {
  url <- paste0("https://comic.naver.com/genre/bestChallenge?&page=", i)
  html <- read_html(url)
  
  name <- html_text(html_nodes(html, "div.challengeInfo > h6.challengeTitle > a"), trim=T)
  summary <- html_text(html_nodes(html, "div.challengeInfo > div.summary"), trim=T)
  grade <- html_text(html_nodes(html, "div.challengeInfo > div.rating_type > strong"))
  
  comicName <- append(comicName, name)
  comicSummary <- append(comicSummary, summary)
  comicGrade <- append(comicGrade, grade)
}


navercomic <- data.frame(comicName, comicSummary, comicGrade)
str(navercomic)
View(navercomic)
write.csv(navercomic, "output/navercomic.csv")
