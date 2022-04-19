#날짜 : 2022/04/19
#이름 : 김유경
#내용 : ch05. 데이터 시각화 - 원형차트 교재 p147



season <- c('winter','summer','spring','summer','summer',
            'autumn','autumn', 'summer', 'spring', 'spring')
season
result <- table(season)
result

pie(result)
pie(result, col = terrain.colors(4))
