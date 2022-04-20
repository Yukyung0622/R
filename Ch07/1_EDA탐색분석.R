#날짜 : 2022/04/20
#이름 : 김유경
#내용 : ch07. EDA와 데이터 정제 - EDA 실습교재 p194

df_exam <- read.csv('../file/exam.csv')
df_exam

#Vies()
View(df_exam)

#head, tail
head(df_exam)
tail(df_exam)

#dim
dim(df_exam)

#str
str(df_exam)

#summary
summary(df_exam)

#sum
sum(df_exam$math)

#mean
mean(df_exam$english)

