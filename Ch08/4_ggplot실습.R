#날짜 : 2022/04/20
#이름 : 김유경
#내용 : ch08.고급시각화- 교재 실습교재 p270

#교재 p270 실습 - aes()함수 속성을 추가하여 미적 요소 맵핑하기
p <- ggplot(diamonds, aes(carat,price, color=cut))
p + geom_point()

p <- ggplot(mtcars, aes(mpg, wt, color=factor(cyl)))
p + geom_point()

#교재 p271 실습 - geom_line()과 geom_point()함수를 적용하여 레이어 추가하기
p <- ggplot(mtcars, aes(mpg, wt, color=factor(cyl)))
p+geom_line()

p <- ggplot(mtcars, aes(mpg, wt, color=factor(cyl)))
p +geom_point()

#교재 p272 실습 - stat_bin()함수를 사용하여 막대 그래프 그리기
p <- ggplot(diamonds, aes(price))
p+stat_bin(aes(fill=cut), geom="bar")
p+stat_bin(aes(fill=..density..),geom ="bar")


#교재 p274 실습 - stat_bin()함수 적용 영역과 산점도 그래프 그리기
p<-ggplot(diamonds, aes(price))
p+stat_bin(aes(fill=cut), geom="area")

p+stat_bin(aes(color=cut, 
          size=..density..), geom = "point")

#교재 p275 실습 - 산점도에 회귀선 적용하기
library(UsingR)

data("galton")
p <- ggplot(data=galton, aes(x=parent, y=child))
p+geom_count()+geom_smooth(method="lm")

#교재 p275 실습 - 테마를 적용하여 그래프 외형 속성 설정하기
p <- ggplot(diamonds, aes(carat, price, color=cut))
p <- p+geom_point() + ggtitle("다이아몬드 무게와 가격의 상관관계")
print(p)

p + theme (
  title=element_text(color = "blue", size = 25),
  axis.title = element_text(size = 14, face = "bold"),
  axis.title.x = element_text(color = "green"),
  axis.title.y = element_text(color = "green"),
  axis.text = element_text(size = 14),
  axis.text.y = element_text(color = "red"),
  axis.text.x = element_text(color = "purple"),
  legend.title = element_text(size = 20,
                              face = "bold",
                              color = "red"),
  legend.position = "bottom",
  legend.direction = "horizontal"
)

#교재 p277 실습 - 그래프를 이미지 파일로 저장하기
p <- ggplot(diamones, aes(carat, price, color=cut))
p+geom_point()
ggsave(file="C:/output/imamond_price.pdf")

#교재 p277 실습 - 변수에 저장된 그래프를 이미지 파일로 저장하기
p <- ggplot(diamonds, aes(clarity))
p <- p+geom_bar(aes(fill=cut), position = "fill")

ggsave(file="C:/bigdata/output/bar.png", plot = p, width = 10, height = 5)
