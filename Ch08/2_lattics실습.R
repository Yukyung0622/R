#날짜 : 2022/04/20
#이름 : 김유경
#내용 : ch08.고급시각화- 교재 실습교재 p259

#교재 p234 실습 - lattice 패키지 사용 준비하기
install.packages("lattice")
library(lattice)
install.packages("mlmRev")
library(mlmRev)

data(Chem97)
str(Chem97)

#교재 p236 실습 - histogram()함수를 이용하여 데이터 시각화하기
histogram(~gcsescore, data = Chem97)

#교재 p236 실습 - score 변수를 조건변수로 지정하여 데이터 시각화하기
histogram(~gcsescore | score, data = Chem97)
histogram(~gcsescore | factor(score), data = Chem97)

#교재 p238 실습 - densityplot() 함수를 사용하여 밀도 그래프 그리기
densityplot(~gcsescore | factor(score), data = Chem97,
            groups = gender,
            plot.point= T, auto.key = T)

#교재 p239 실습 - barchart() 함수를 사용하여 막대 그래프 그리기
data(VADeaths)
VADeaths
str(VADeaths)

dft <- as.data.frame.table(VADeaths)
str(dft)

barchart(Var1 ~ Freq | Var2, data = dft, layout=c(4,1))
barchart(Var1 ~ Freq | Var2, data = dft, layout=c(4,1), origin=0)

#교재 p241 실습 - dotplot() 함수를 사용하여 점 그래프 그리기
dotplot(Var1 ~ Freq | Var2, dft)
dotplot(Var1 ~ Freq | Var2, dft, layout=c(4,1))

#교재 p242 실습 - 점을 선으로 연결하여 시각화하기
dotplot(Var1 ~ Freq, data = dft,
        groups=Var2, type="o",
        auto.key=list(space="right", points=T, lines=T))

#교재 p243 실습 - airquality 데이터셋으로 산점도 그래프 그리기
library(datasets)
str(airquality)

xyplot(Ozone ~ Wind, data = airquality)
xyplot(Ozone ~ Wind | Month, data = airquality)
xyplot(Ozone ~ Wind | Month, data = airquality, layout=c(5,1))

convert <- transform(airquality, Month=factor(Month))
str(convert)

xyplot(Ozone ~ Wind | Month, data = convert)

#교재 p246 실습 - quakes 데이터셋으로 산점도 그래프 그리기
head(quakes)
str(quakes)

xyplot(lat ~ long, data = quakes, pch=".")


#교재 p247 실습 - 이산형 변수를 조건으로 지정하여 산점도 그리기
range(quakes$depth)
quakes$depth2[quakes$depth >= 40 & quakes$depth <= 150] <-1
quakes$depth2[quakes$depth >= 151 & quakes$depth <= 250] <-2
quakes$depth2[quakes$depth >= 251 & quakes$depth <= 350] <-3
quakes$depth2[quakes$depth >= 351 & quakes$depth <= 450] <-4
quakes$depth2[quakes$depth >= 451 & quakes$depth <= 550] <-5
quakes$depth2[quakes$depth >= 551 & quakes$depth <= 650] <-6

convert <- transform(quakes, depth2=factor(dapth2))
xyplot(lat~long | depth2, data=convert)

#교재 p248 실습 - 동일한 패널에 두개의 변수값 표현하기

#교재 p249 실습 - equal.count() 함수를 사용하여 이산형 변수 범주화하기

#교재 p251 실습 - 수심과 리히터 규모 변수를 동시에 적용하여 산점도 그리기

#교재 p253 실습 - 이산형 변수를 리코딩한 뒤에 factor형으로 변환하여 산점도 그리기

#교재 p254 실습 - depth 조건에 의해서 위도와 경도의 조건 그래프 그리기

#교재 p255 실습 - 조건의 구간 크기와 겹침 간격 적용 후 조건 그래프 그리기

#교재 p256 실습 - 패널과 조건 막대에 색을 적용하여 조건 그래프 그리기

#교재 p257 실습 - 위도, 경도, 깊이를 이용하여 3차원 산점도 그리기

#교재 p258 실습 - 테두리와 회전 속성을 추가하여 3차원 산점도 그래프 그리기