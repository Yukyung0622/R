install.packages("magrittr")
library(magrittr)
install.packages('dplyr')
library(dplyr)

exam <- read.csv('../file/exam.csv')
View(exam)


rs1<- exam %>% select(math)
rs2<- exam %>% select(english)
rs3<- exam %>% select(science)

rs1;rs2;rs3
View(rs1)
View(rs2)
View(rs3)

r4 <- exam %>% select(everything()) %>%  filter(class==1) 
r4

r5 <- exam %>% filter(english >= 60 & english < 80) %>% select(english)
r5

r6 <- exam %>% filter(science >= 60 & science<80) %>% select(science)
r6

r7 <- exam %>% filter(math > 60) %>% select(class, id, math) %>%  arrange(desc(math))
r7

gr1 <- exam %>% group_by(class) %>%  summarise(mean(math), mean(english), mean(science))
gr1

result1 <- exam %>%  mutate(total = math+english+science)
result1
View(result1)

result2 <- result1 %>% mutate(mean = total / 3)
result2
View(result2)

result3 <- result2 %>%  mutate(grade = ifelse(mean >= 90, 'A', 
                                              ifelse(mean >= 80, 'B',
                                              ifelse(mean >= 70, 'C',
                                              ifelse(mean >= 60, 'D', 'F')))))
result3
View(result3)

