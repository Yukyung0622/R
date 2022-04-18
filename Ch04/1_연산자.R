#날짜 : 2022/04/18
#이름 : 김유경
#내용 : Ch04.제어문과 함수 - 연산자 교재 p108

#산술연산자 사용 - 교재 p108 실습
num1 <- 100   #피연산자1
num2 <- 20    #피연산자1
result <- num1 + num2   
result

result <- num1 - num2   
result

result <- num1 * num2
result

result <- num1 / num2
result

result <- num1 %% num2   #나머지 계산
result

result <- num1^2         #제곱계산 (num1 ** 2)
result

result <- num1 ^ num2    #100의 20승(10020)
result

#관계연산자 사용 - 교재 p109 실습
#관계연산자 - 동등비교
boolean <- num1 == num2   #두변수의 값이 같은지 비교
boolean

boolean <- num1 != num2   #두 변수의 값이 다른지 비교
boolean

#관계연산자 - 크기비교
boolean <- num1 > num2    #num1 값이 큰지 비교
boolean

boolean <- num1 >= num2   #num1 값이 크거나 같은지 비교
boolean

boolean <- num1 < num2   #num2이 큰지 비교
boolean

boolean <- num1 <= num2  #num2이 크거나 같은지 비교
boolean


#논리연산자 사용 - 교재 p109 실습
logical <- num1 >= 50 & num2 <= 10  # 두관계식이 같은지 판단단
logical

logical <- num1 >= 50 | num2 <= 10   #두관계식 중 하나라도 같은지 판단
logical

logical <- num1 >= 50       #관계식 판단
logical

logical <- !(num1 >= 50)    #괄호 안의 관계식 판단 결과에 대한 부정
logical

x<- TRUE; y<- FALSE
xor(x,y)
