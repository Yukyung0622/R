#날짜 : 2022/04/20
#이름 : 김유경
#내용 : ch07. EDA와 데이터 정제 - 결측치 처리 실습교재 p200
library(dplyr)

#결측치 데이터 불러오기
df_exam <- read.csv('../file/exam_na.csv')
View(df_exam)

#결측치 존재 여부 확인
is.na(df_exam)

#결측치를 갖는 행 제거
df_exam2 <- df_exam %>%  filter(!is.na(math) & !is.na(english) & !is.na(science))
View(df_exam2)

#탐색분석(EDA)
df_exam3<-df_exam2 %>% mutate(total = math+english+science, mean=total/3) %>% arrange(desc(total))
View(df_exam3)
