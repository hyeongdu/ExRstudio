#데이터 입력해 데이터 프레임 만들기 

#영어 점수 
english <- c(90,80,60,70)

#수학 점수 
math <- c (50, 60, 100, 10)

#데이터 프레임 만ㄷ르기
df_midterm <- data.frame(english, math)
df_midterm

#데이터 프레임에 데이터 추가
class <- c(1, 1, 2, 2)
name <- c("홍길동", "전우치", "손오공", "해리포터")
df_midterm <- data.frame(english, math, class, name)
df_midterm

#컬럼 추가 
df_midterm <- cbind(df_midterm, age=c(25,26,27,28))
df_midterm

#데이터 추가 
df_midterm <- rbind(df_midterm,
                    data.frame(english=50, math=50, class=3, name="멀린",age=30))
df_midterm

#데이터 프레임 한 번에 만들기(등호가 사용된다.)

df_midterm2 <- data.frame(english2 <- c(90,80,70,60),
                          math2 = c(50,60,100,20),
                          class2 = c(1,1,2,2),
                          name2 = c("홍길동","전우치","손오공","해리포터"))
english2 # 별도의 변수 객체로 지정되지 않았다. 데이터 프레임에서 컬럼으로만 사용됨 
        # 30번에서 = 대신 <- 할경우 변수로 지정되고 테이블 만들어진다 
df_midterm2

#분석하기
# $기호는 데이터 프레임 안에 있는 변수를 지정할 때 사용
mean(df_midterm$english)
max(df_midterm$math)
