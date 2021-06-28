#외부 데이터 이용하기 #2 : 파일 저장

#앞에서 생성한 데이터 프레임 확인

df_txt_exam1
df_csv_exam1
df_excel

#데이터 프레임을 txt로 저장하기
write.table(df_txt_exam1, file = "../Work/test.txt")

#데이터 프레임을 csv로 저장하기
write.csv(df_csv_exam1, file = "../Work/test.csv")

#데이터 프레임을 xls로 저장하기 : 다양한 패키지가 제공된다. 
install.packages("xlsx")
library(xlsx)
write.xlsx(df_excel, file="../Work/test.xls")

#데이터 프레임을 RDATA 파일로 저장하기
save(df_csv_exam1, file = "test.rda")

#변수 삭제 
rm(df_csv_exam1)
df_csv_exam1

#저장된 rda 데이터 파일 불러오기 
load("test.rda")
df_csv_exam1
