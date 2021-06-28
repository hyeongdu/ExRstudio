#외부 데이터 이용하기 : 파일 읽기

#작업 디렉터리 지정
setwd("D:/Ex_Rstudio")
getwd()

#함수 설명 보기
?read.table

#TXT 파일 읽어오기 - 구분자가 공백이거나 탭이면 sep 속성을 생략할 수 있다 
df_txt_exam1 <- read.table("../Data/txt_exam1.txt", header=T)
df_txt_exam1

#구분자가 , 인 파일 읽어 오기 (탭이면 '\t')
df_txt_exam2 <- read.table("../Data/txt_exam2.txt", sep = ",")
df_txt_exam2

# 컬럼명이 없는 파일 읽어오기
df_txt_exam3 <- read.table("../Data/txt_exam3.txt", sep = ",",header = F)
df_txt_exam3

#컬럼명 변경
names(df_txt_exam3) <- c("id","class","math","english","science")
df_txt_exam3

#-----------------------------------------------------------
#csv는 별도의 패키지를 설치하지 않고 내장된 함수를 이용한다. 
df_csv_exam1 <- read.csv("../Data/csv_exam1.csv")
df_csv_exam1

#문자가 들어 있는 파일을 읽어올 때는 stringAsFactors =f
df_csv_exam2 <- read.csv("../Data/csv_exam2.csv", stringsAsFactors = F,
                         fileEncoding = 'utf-8', encoding = 'utf-8')
df_csv_exam2

#컬럼명이 없고 구분자가 "|" 인 파일 읽어오기
df_csv_exam3 <- read.csv("../Data/csv_exam3.csv", sep="|", header = F)
df_csv_exam3

#컬럼명 변경
names(df_csv_exam3) <- c("id", "class", "math", "english", "science")
df_csv_exam3


#------------------------------------------------------------
#엑셀 데이터 : readxl 패키지 설치하고 로드하기

install.packages("readxl")
library(readxl)

#설명 보기
?read_excel
df_excel <- read_excel("../Data/excel_exam.xlsx")
df_excel


#엘셀 파일 불러오기 (프로젝트 폴더 안의 데이터는 따옴표로만 묶기)
df_excel_novar <- read_excel("../Data/excel_exam_novar.xlsx", col_names = F)
df_excel_novar

#엑셀 파일에 시트가 여러개 있을 때
df_excel_sheet <- read_excel("../Data/excel_exam_sheet.xlsx", sheet = 3)
df_excel_sheet

df_exam <- read_excel("../Data/excel_exam_sheet.xlsx", col_names = T, sheet = 3)
df_exam

