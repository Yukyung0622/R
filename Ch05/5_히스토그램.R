#날짜 : 2022/04/19
#이름 : 김유경
#내용 : ch05. 데이터 시각화 - 히스토그램 교재 p150


cars
View(cars)

dist <- cars[,2]
dist

barplot(dist)
hist(dist)

hist(iris$Sepal.Width)
hist(iris$Sepal.Length)
hist(iris$Petal.Width)
hist(iris$Petal.Length)
