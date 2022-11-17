library(rvest)

url <- "http://unico2013.dothome.co.kr/crawling/exercise_bs.html"
html <- read_html(url)
html


# <h1> 태그의 컨텐츠 
node1 <- html_nodes(html, "h1")
html_text(node1)

# <a> 태그의 컨텐츠와 href 속성값
node2 <- html_nodes(html, "a")
html_text(node2, trim=T)
html_attr(node2, "href")

data.frame(content=html_text(node2, trim=T), 
           href=html_attr(node2, "href"))

# <img> 태그의 src 속성값
node3 <- html_nodes(html, "img")
html_attr(node3, "src")

# 첫 번째 <h2> 태그의 컨텐츠
node4 <- html_nodes(html, "h2:nth-of-type(1)")
html_text(node4)
## answer
node4b <- html_node(html, "h2:nth-of-type(1)")
html_text(node4b)

# <ul> 태그의 자식 태그들 중 style 속성의 값이 green으로 끝나는 태그의 컨텐츠
node5 <- html_nodes(html, "ul *[style$=green]")
html_text(node5)

node5b <- html_nodes(html, "ul > *[style$=green]")
html_text(node5b)

# 두 번째 <h2> 태그의 컨텐츠
node6 <- html_nodes(html, "h2:nth-of-type(2)")
html_text(node6)
## answer
node6b <- html_node(html, "h2:nth-of-type(2)")
html_text(node6b)

# <ol> 태그의 모든 자식 태그들의 컨텐츠
node7 <- html_nodes(html, "ol *")
html_text(node7)
## answer
node7b <- html_nodes(html, "ol > *")
html_text(node7b)

# <table> 태그의 모든 자손 태그들의 컨텐츠
node8 <- html_nodes(html, "table *")
html_text(node8)

# name이라는 클래스 속성을 갖는 <tr> 태그의 컨텐츠
node9 <- html_nodes(html, ".name")
html_text(node9)
## answer
node9b <- html_nodes(html, "tr.name")
html_text(node9b)

# target이라는 아이디 속성을 갖는 <td> 태그의 컨텐츠
node10 <- html_nodes(html, "#target")
html_text(node10)
## answer
node10b <- html_node(html, "td#target")
html_text(node10b)


## html_node() vs. html_nodes()
### html_node() -> 정확히 node 하나를 선택할 때
### html_nodes() -> 여러 개를 선택하거나 몇 개를 선택할지 모를 때

## > * vs. *
### > * -> 하나 아래의 모든 자손(=자식) 태그를 가져올 때
### * -> 전체 자손 태그를 가져올 때

## 특정 속성을 갖는 태그를 선택할 때 tag.class or tag#id
