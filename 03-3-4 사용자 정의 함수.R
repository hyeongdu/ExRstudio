# 제어문과 함수
#4: 함수

# 4-1 : 사용자 정의 함수 정의 - 매개 변수x 반환값 x
f1 <- function(){
  cat("매개변수가 없고 반환값 없는 함수 \n")
  2+3
}

rNum3 <- f1()
rNum3
#4-2 사용자 정의 함수 정의 -매개 변수x 반환값o

f2 <- function(){
  cat("매개변수가 없고 반환값 있는 함수 \n")
  return(2+3)
}

rNum1 <- f2()
rNum1

#4-3 사용자 정의 함수 정의 -매개 변수 o 반환값 x
f3 <- function(x,y){
  cat("매개변수가 있고 반환값 없는 함수 \n")
  x+y
}

f3(2,3)

#4-4 사용자 정의 함수 정의 -매개변수 o 반환값o

f4 <- function(x,y){
  cat("매개변수가 있고 반환값 있는 함수 \n")
  return(x+y)
}

rNum2 = f4(2,3)
rNum2


#---------------------------------------------
#4-5구구단 출력 함수 정의
gugudan <- function(i,j){
  for(x in i){
    cat("**", x, "단 **\n")
    for (y in j){
      cat(x," * ", y, " = ", x*y, "\n")
    }
    cat("\n")
  }
}

dan <- c(2:9) #단 지정
su <- c(1:9) #단수와 곱해지는 수 지정
gugudan(dan,su)
