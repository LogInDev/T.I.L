
# 기출유제 4회 1유형 1번
library(dplyr)
library(readr)
df4_1 <- read_csv('car1.csv')


q3 <- df4_1 %>% summarise(quantile(horsepower,0.75))
q1 <- df4_1 %>% summarise(quantile(horsepower,0.25))
diff <- trunc(abs(q1-q3))

print(diff)


# 데이터 불러오기
library(readr)
library(dplyr)

df4_2 <- read_csv('df4_2.csv')



# 숫자형 데이터중 결측치가 있는 컬럼을 0으로 값을 대체
df4_2 <- df4_2 %>% mutate_if(is.numeric, ~ifelse(is.na(.), 0, .))

result4_2<- df4_2 %>%  mutate(sum_confidence=confidence+negativeconfidence) %>% filter(sentiment=='negative') %>% mutate(negativ_ratio=negativeconfidence/sum_confidence) %>% filter(negativ_ratio>0.4 & negativ_ratio<0.5) %>% count()


# 출력하기
print(result4_2)


# 기출유제 4회 1유형 3번

df4_3 <- read_csv('df4_3.csv')

library(dplyr)
library(lubridate)

result4_3 <- df4_3 %>% filter(country=='United Kingdom')  %>% mutate(dt=mdy(date_added), year=year(dt), month=month(dt)) %>% filter(year==2018 & month==1) %>% count()
print(result4_3)




