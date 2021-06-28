#제어문과 함수 

#3: 반복문

# 3-1: for()함수

i<-c(1:10)
for (n in i) {
  cat(n, " * 10 = ",n*10,"\n")
  
}

for (n in i) {
  print(n*10)
  print(n)
}
# 짝수인것은 패스
# %%나머지 구하지
for (n in i) {
  if(n%%2 ==0){
    next
    
  } else {
    print(n)
  }
}
#변수의 컬럼명 출력하기 
exam <- data.frame(english2 = c(90,80,70,60),
                   math2 = c(50,60,100,20),
                   class2 = c(1, 1, 2, 2),
                   name2 = c("홍길동","전우치","손오공","해리포터")
                   )
name <- c(names(exam))
for (n in name) {
  print(n)
}
