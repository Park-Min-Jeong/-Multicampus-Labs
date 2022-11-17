# 문제1
v <- seq(10, 38, 2)
m1 <- matrix(v, nrow=3, ncol=5, byrow=T)
print(m1)

m2 <- m1+100
print(m2)

m_max_v <- max(m1)
m_min_v <- min(m1)

row_max <- apply(m1, 1, max)
col_max <- apply(m1, 2, max)

print(m_max_v)
print(m_min_v)
print(row_max)
print(col_max)


# 문제2
#n1 <- seq(1, 3)
#n2 <- seq(4, 6)
#n3 <- seq(7, 9)
n1 <- 1:3
n2 <- 4:6
n3 <- 7:9

m2 <- cbind(n1, n2, n3)
colnames(m2) <- NULL
print(m2)


# 문제3
#m3 <- matrix(seq(1,9), nrow=3, byrow=T)
m3 <- matrix(1:9, nrow=3, byrow=T)
print(m3)


# 문제4
m4 <- m3
colnames(m4) <- c("col1", "col2", "col3")
rownames(m4) <- c("row1", "row2", "row3")
print(m4)


# 문제5
alpha <- matrix(letters[1:6], nrow=2, ncol=3)
print(alpha)

alpha2 <- rbind(alpha, c("x", "y", "z"))
print(alpha2)

alpha3 <- cbind(alpha, c("s", "p"))
print(alpha3)


# 문제6
#a <- array(seq(1, 24), dim=c(2, 3, 4))
a <- array(1:24, dim=c(2, 3, 4))
print(a)

# 1
print(a[2,3,4])

# 2
print(a[2,,])

# 3
print(a[,1,])

# 4
print(a[,,3])

# 5
print(a+100)

# 6
print(a[,,4]*100)

# 7
#print(a[1,c(2,3),])
print(a[1,2:3,])

# 8
a[2,,2] <- a[2,,2]+100
print(a[2,,2])

# 9
a[,,1] <- a[,,1]-2
print(a[,,1])

# 10
a <- a*10
print(a)

# 11
rm(a)
