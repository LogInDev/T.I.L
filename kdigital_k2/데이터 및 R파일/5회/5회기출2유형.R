library(readr)
library(dplyr)

# 데이터 불러오기
x_train<- read_csv('x_train5.csv')
y_train <- read_csv('y_train5.csv')


X_test <- read_csv('X_test5.csv')


# 결측치 확인하기
colSums(is.na(x_train))
colSums(is.na(y_train))

colSums(is.na(X_test))


# 문자형 변수의 수준 확인
unique(x_train$fueltype)
unique(X_test$fueltype)


# X_test데이터 셋에서 'Other'수준을 x_train에 가장 많은 수의 수준을 찾습니다.
X_test %>% group_by(fueltype) %>% count()

# X_test데이터 셋에서 'Other'을 'Petrol'로 업데이트 합니다.
X_test <- X_test %>% mutate(fueltype=ifelse(fueltype=='Other','Petrol',fueltype))



# 문자형 데이터 factor로 변경
x_train <- x_train %>% mutate_if(is.character, as.factor)
X_test　<- X_test %>% mutate_if(is.character, as.factor)


# 무의미한 컬럼 'model'제외
x_train <- x_train[,-2]
X_test <- X_test[,-2]


# 5. 숫자형 데이터 정규화하기
summary(x_train)
summary(X_test)

x_train <- x_train %>% mutate(year=2023-year)
X_test <- X_test%>% mutate(year=2023-year)


# year가 음수인 데이터를 확인
X_test %>% filter(year<0)
X_test <- X_test %>% mutate(year=ifelse(year==-37,1,year))


# engineSize가 0이면서 전기차가 아닌 경우 확인

x_train %>% filter(engineSize==0 & fueltype!='Electric')
X_test %>% filter(engineSize==0 & fueltype!='Electric')

# engineSize가 0인경우는 중앙값으로 대체
x_train <- x_train %>% mutate(engineSize=ifelse(engineSize==0,median(engineSize,na.rm=T),engineSize))
X_test <- X_test %>% mutate(engineSize=ifelse(engineSize==0,median(engineSize,na.rm=T),engineSize))



# 정규화분포를 알지 못한다고 생각하고 최대최소 정규화

library(caret)
preproc <- preProcess(x_train[,-1],'range')


# 전처리된 데이터를 확인합니다.
pre_x_train <- predict(preproc, x_train)
pre_X_test  <- predict(preproc, X_test)


summary(pre_x_train)
summary(pre_X_test)


# 데이터 분할하기
# 학습용 데이터를 검증용 데이터로 다시 분할
set.seed(1)
index <- sample(1:nrow(pre_x_train), nrow(pre_x_train)*0.7)


# 추출된 인덱스로 데이터셋을 재구성
train_set <- pre_x_train[index,]
valid_set <- pre_x_train[-index,]


# 분리된 데이터와 예측용 데이터의의 수준이 같은지도 확인해야 합니다.
str(train_set)
str(valid_set)

str(pre_X_test)


# factor변수 원핫인코딩
library(caret)

dummy <- dummyVars('~.', data=train_set)

train_dummy <- data.frame(predict(dummy,newdata=train_set))
vaild_dummy <- data.frame(predict(dummy,newdata=valid_set))


X_test_dummy <- data.frame(predict(dummy,newdata=pre_X_test))


# 각 데이터의 학습 결과를 알아보기 위해 'price'컬럼을 추가하는 데이터 셋으로 만들어 줍니다.
train_dummy<- merge(train_dummy,y_train, by='id')
vaild_dummy <- merge(vaild_dummy,y_train, by='id')


# 가격예측 모형 생성하기
library(randomForest)
model_rf1 <- randomForest(train_dummy$price~.-id, data=train_dummy) 

model_lm <- lm(train_dummy$price~.-id, data=train_dummy)


# 예측하기
pred_rf1 <- predict(model_rf1,newdata=vaild_dummy)
pred_lm <- predict(model_lm, newdata=vaild_dummy)


# 모델 성능확인하기
library(ModelMetrics)
rmse(pred_rf1, as.numeric(vaild_dummy$price)) #1512.513
rmse(pred_lm, as.numeric(vaild_dummy$price)) # 2412.852



# 최종 선택 모델로 평가용 데이터로 예측하기
pred_test <- predict(model_rf1,newdata=X_test_dummy)
result5 <- data.frame(pred_test)


Y <- data.frame(price=as.integer(result5$pred_test))

write.csv(Y,'price.csv',row.names=FALSE)



