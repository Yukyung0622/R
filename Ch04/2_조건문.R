#날짜 : 2022/04/18
#이름 : 김유경
#내용 : Ch04.제어문과 함수 - 조건문 교재 p110

#if() 사용하기 - 교재 p110 실습
x<-50; y<-4; z<-x*y
if(x*y>=40){
  cat("x*y의 결과는 40이상입니다.\n")  #\n은 줄바꿈
  cat("x*y=",z)
}else{
  cat("x*y의 결과는 40미만 입니다. x*y=",z, "\n")
}

#if() 사용으로 입력된 점수의 학점 구하기 - 교재 p110 실습
score <- scan() # 점수 입력받기
score
result <- "노력"
if(score >= 80){
  result <-"우수"
}
cat("당신의 학점은", result, score)


#if ~ else if 형식으로 학점 구하기 - 교재 p111 실습
score <- scan()
if(score >= 90){
+ result ="A학점"
+}else if(score >= 80){
+ result ="B학점"
+}else if(score >=70){
+ result ="C학점"
+}else if(score >=60){
+ result="D학점"
+}else{
+ result="F학점"
+}
cat("당신의 학점은", result)
print(result)

#ifelse() 사용하기 - 교재 p112 실습 
#ifelse() 응용하기 - 교재 p112 실습
#ifelse()에서 논리연산자 사용하기 - 교재 p113 실습 
#switch()를 사용하여 사원명으로 급여정보 보기 - 교재 p113 실습 
#백터에서 switch() 사용:index 값을 반환 - 교재 p114 실습 
#데이터프레임에서 which()사용용 - 교재 p114 실습 