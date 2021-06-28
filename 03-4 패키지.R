#패키지 설치
install.packages("ggplot2")


library(ggplot2)
#패키지 로드

#변수 생성
x2 <- c("a", "a","a","a","b","c")
x2

# 빈도 막대 그래프 출력
qplot(x2)

#함수의 기능이 궁금하다면 : 메뉴얼 출력
?qplot
