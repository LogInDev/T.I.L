
df <- read.csv('car1.csv')


# ‘horsepower’컬럼 기준으로 상위 10개의 데이터를 ‘horsepower’ 의 최소값으로 대체한 후, 
#‘wheelbase’컬럼 80이상인 데이터의 ‘horsepower ‘컬럼의 평균값을 구하시오.
library(dplyr)

result2_1 <- df %>% arrange(-horsepower) %>% mutate(horsepower=ifelse(horsepower>=horsepower[10],min(horsepower[10]),horsepower)) %>% filter(wheelbase>=80) %>% summarise(mean(horsepower))
print(result2_1)

# 2번 문제
# 오름차순으로 70% 데이터만 활용해서, 'f1'컬럼 결측치를 중앙값으로 채우기 전후의 표준편차를 구하고, 두 표준편차 차이 계산하기
df <- read.csv('car1.csv')
library(dplyr)

result2_2 <- df %>% arrange() %>% head(nrow(df)*0.7) %>% mutate(af_price=ifelse(is.na(price),median(price,na.rm=T),price)) %>% summarise(be_sd=sd(price,na.rm=T), af_sd=sd(af_price)) %>%apply(1,diff) %>% abs()
print(result2_2)


# 3번 문제 'horsepower'컬럼의 이상치를 더하시오!
df <- read.csv('car1.csv')
library(dplyr)

result2_3 <- df %>% filter(horsepower<mean(horsepower)-1.5*sd(horsepower) | horsepower>mean(horsepower)+1.5*sd(horsepower)) %>% summarise(sum(horsepower))

print(result2_3)










