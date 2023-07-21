
# 3회 기출 1유형의 1번 문항 데이터
library(readr)
df3_1 <- read_csv('df3_1.csv')

library(dplyr)

restult3_1 <- df3_1 %>% na.omit() %>% arrange() %>% slice(1:round(n() * 0.7))%>% summarize(as.integer(quantile(Age,0.25)))
print(restult3_1)


# 3회 기출 1유형의 2번 문항 데이터
# 국가별 

library(readr)
library(dplyr)
df3_2 <- read_csv('df3_2.csv')
head(df3_2)

# 2000년도 발생건수 평균보다 낮은 나라의 개수를 정수로 구하시오.
df_2000 <- df3_2 %>% filter(year == 2000) %>% summarise(mean_incidence = mean(incidence, na.rm = TRUE)) 
                                                  
result3_2 <- df3_2 %>% filter(incidence < df_2000$mean_incidence) %>% distinct(country) %>% count()
print(result3_2)


# 3회 기출 1유형의 3번 문항 데이터
library(readr)
library(dplyr)

df <- read_csv('titanic.csv')

# 결측치가 최대인 컬럼의 이름을 출력하라
result3_3 <- names(which.max(colSums(is.na(df))))

print(result3_3)
