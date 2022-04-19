#날짜 : 2022/04/19
#이름 : 김유경
#내용 : ch05. 데이터 시각화 - 박스상자 교재 p148

cars
View(cars)

dist <- cars[,2]
dist
class(dist)

boxplot(dist, main='제동거리')
boxplot.stats(dist)

iris
View(iris)
boxplot(data=iris, Sepal.Length ~ species)
