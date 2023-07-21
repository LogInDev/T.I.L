library(readr)
df5_1 <- read_csv('bmi.csv')

library(dplyr)
# BIM컬럼을 새로 생성합니다. 측정 단위와 주어진 데이터의 단위에 주의하여 생성합니다.(1cm=0.01cm)
df5_1 %>% mutate(bmi=Weight/((Height/100)^2))

# 정상체중(18.5<=bmi<22.9)에 해당하는 수를 구하시오
df5_1 %>% mutate(bmi=Weight/((Height/100)^2)) %>% filter(18.5<=bmi & bmi <22.9) %>% select(bmi)
sum1 <- df5_1 %>% mutate(bmi=Weight/((Height/100)^2)) %>% filter(18.5<=bmi & bmi <22.9) %>% select(bmi) %>% apply(2,sum) # 938.6593
sum2 <- df5_1 %>% mutate(bmi=Weight/((Height/100)^2)) %>% filter(bmi<=18.5) %>% select(bmi) %>% apply(2,sum) # 384.9479 

# 두 수의 차이의 절대값을 구하시오
abs((sum1-sum2))

# 정수형으로 결과값을 출력하시오.
result5_1 <- as.integer(abs(sum1-sum2))                                                
print(result5_1)


# 2)	규격봉투 중 생활쓰레기 봉투의 2L가격이 0인 것을 제외한 평균 가격을 정수형으로 구하시오.
library(readr)
library(dplyr)

df5_2 <- read_csv('bag_price.csv', locale = locale(encoding = 'euc-kr'))
result5_2 <- df5_2 %>% filter(종량제봉투종류=='규격봉투' & 종량제봉투용도=='생활쓰레기' & `2ℓ가격`!=0) %>% select(`2ℓ가격`) %>% apply(2,mean) %>% as.integer()
print(result5_2)


#3) 순전입학생수=총전입학생-총전출학생 순전입학생 가장많은 학교의 전체학생수를 구하라.
library(readr)
library(dplyr)

df5_3 <- read.csv('student_count.csv')

restult5_3 <- df5_3 %>% mutate(순전입학생수=전입학생수.계.-전출학생수.계.) %>% arrange(-순전입학생수) %>% head(1) %>% select(전체학생수.계.) 
print(restult5_3)
