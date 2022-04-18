#날짜 : 2022/04/18
#이름 : 김유경
#내용 : R자료구조 - vector 실습 교재 p58

#vector(하나이상의 스칼라를 갖는 자료구조, 배열)
var1 <- c(1,2,3,4,5)
var1
var1[1]
var1[5]

var2 <- 1:3
var2

#Vector 연산
x <- 1:4
y <- 5:8
x+y
x-y
x*y

#sec() 벡터
var3 <- seq(1, 10, by=2)
var3

#벡터의 합과 평균
rs1 <- sum(var1)
rs2 <- sum(var2)
rs3 <- mean(var1)
rs4 <- mean(var2)

rs1
rs2
rs3
rs4

