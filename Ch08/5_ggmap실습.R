#날짜 : 2022/04/20
#이름 : 김유경
#내용 : ch08.고급시각화- 교재 실습교재 p279


#교재 p279 실습 - 지도 관련 패키지 설치하기
library(ggplot2)
install.packages("ggmap")
install.packages("stringr")
library(ggmap)


#교재 p280 실습 - 서울을 중심으로 지도 시각화 하기
seoul <- c(left = 126.77, bottom = 37.40,
          right = 127.17, top=37.70)

map <- get_stamenmap(seoul, zoom = 12, maptype = 'terrain')
ggmap(map)


#교재 p281 실습 - 2019년도 1월 대한민국 인구수를 기준으로 지역별 인구수 표시하기
#2019년 1월 기준 대한민국 인수구
pop <- read.csv(file.choose(), header = T)

library(stringr)

region <- pop$'지역명'
lon <- pop$LON
lat <- pop$LAT
tot_pop <- as.numeric(str_replace_all(pop$'총인구수', ',',''))

df <- data.frame(region, lon, lat, tot_pop)
df
df <-df[1:17,]
df

daegu <- c (left=123.4423013, bottom=32.8528306,
            right=131.601445, top=38.8714654)
map <- get_stamenmap(daegu, zoom=7, maptype='watercolor')

layer1 <- ggmap(map)
layer1

layer2 <- layer1 + geom_point(data=df,
                              aes(x=lon, y=lat,
                                  color=factor(tot_pop),
                                  size=factor(tot_pop)))
layer2


layer3  <- layer2+geom_text(data = df,
                            aes(x=lon+0.01, y=lat+0.08,
                                label=region), size=3)
layer3


ggsave("pop202204.png", scale = 1, width = 10.24, height = 7.68)
