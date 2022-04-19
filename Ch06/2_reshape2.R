#날짜 : 2022/04/19
#이름 : 김유경
#내용 : ch06. 데이터 조작 - reshape2 패키지 실습 교재 p184

install.packages('reshape2')
library(reshape2)

#reshape2 패키지 설치와 데이터 가져오기 - 교재 p184 실습
data <- read.csv("../file/data.csv")
data

#넓은 형식으로 변경하기 - 교재 p185 실습
wide <- dcast(data, Customer_ID ~ Date, sum)
wide

#파일 저장 및 읽기 - 교재 p185 실습
setwd("../file")
write.csv(wide, "wide.csv", row.names = FALSE)

wide <- read.csv("wide.csv")
colnames(wide) <- c('Customer_ID', 'day1', 'day2', 'day3', 'day4', 'day5', 'day6', 'day7')
wide

#넓은 형식의 데이터를 긴 형식으로 변경하기 - 교재 p186 실습
long <- melt(wide, id="Customer_ID")
long

name <- c("Customer_ID", "Date", "Buy")
colnames(long) <- name
head(long)

#smiths 데이터셋 확인하기 - 교재 p186 실습
date("smiths")
smiths

long<-melt(id=1:2, smiths)
long

dcast(long, subject+time~...)

#airquality 데이터 셋의 구조 변경하기기 - 교재 p187 실습
data('airquality')
str(airquality)
airquality

names(airquality) <- toupper(names(airquality))
head(airquality)

air_melt <- melt(airquality, id= c("MONTH", "DAY"),na.rm=TRUE)
head(air_melt)

names(air_melt) <- tolower(names(air_melt))
acast <- acast(air_melt, day~month~variable)
acast

acast(air_melt,month~variable,sum,margins=TRUE)
