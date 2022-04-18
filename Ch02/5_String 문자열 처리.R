#날짜 : 2022/04/18
#이름 : 김유경
#내용 : R자료구조 - 문자열 처리 실습 교재 p84

#패키지 설치
install.packages('stringr')

#패키지 로드
library(stringr)

#문자열
str <- 'Hello World'
str

#문자열 길이
str_length(str)

#문자열 자르기
str_sub(str, 1, 5)
