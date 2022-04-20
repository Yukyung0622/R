#날짜 : 2022/04/20
#이름 : 김유경
#내용 : ch07. EDA와 데이터 정제 - 이상치 처리 실습교재 p202

library(dplyr)

#이상치 데이터 불러오기
df_exam <- read.csv('../file/exam_outlier.csv')
View(df_exam)

#이상치를 결측치로 대체
df_exam$math <- ifelse(df_exam$math > 100 | df_exam$math < 0,NA, df_exam$math)
df_exam$english <- ifelse(df_exam$math > 100 | df_exam$math < 0,NA, df_exam$english)
df_exam$science <- ifelse(df_exam$math > 100 | df_exam$math < 0,NA, df_exam$science)

View(df_exam)

#결측치를 0으로 대체
df_exam$math <- ifelse(!is.na(df_exam$math), df_exam$math, 0)
df_exam$english <- ifelse(!is.na(df_exam$english), df_exam$english, 0)
df_exam$science <- ifelse(!is.na(df_exam$science), df_exam$science, 0)
View(df_exam)

#탐색분석(EDA)
df_exam2<- df_exam %>% mutate(total=math+english+science, mean=total/3) %>% arrange(desc(total))
View(df_exam2)
