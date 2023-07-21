library(readr)
library(dplyr)

# 데이터 불러오기
x_train<- read_csv('x_train3.csv')
y_train <- read_csv('y_train3.csv')
X_test <- read_csv('X_test3.csv')


# 1. 학습데이터 셋으로 만들기
train_data <- merge(x_train,y_train, by='id')


# 2. 결측치 확인
train_data %>% is.na() %>%  colSums()
X_test %>% is.na() %>%  colSums()


# 3. 문자형 데이터 factor로 변경하기

train_data <- train_data %>% mutate_if(is.character,as.factor)
X_test <- train_data %>% mutate_if(is.character,as.factor)


# 3.1 종속변수로 분류이므로 factor로 변경
train_data$travelinsurance <- as.factor(train_data$travelinsurance)
X_test$travelinsurance <- as.factor(X_test$travelinsurance)

train_data$diseases <- as.factor(train_data$diseases)
X_test$diseases <- as.factor(X_test$diseases)


# 4. 숫자형 데이터 정규화하기
summary(train_data)


# preProcess 함수를 사용하여 전처리합니다.
library(caret)
preproc <- preProcess(train_data,'range')


# 전처리된 데이터를 확인합니다.
pre_train_data <- predict(preproc, train_data)
pre_X_test  <- predict(preproc, X_test)


summary(pre_train_data)
summary(pre_X_test)

# 문자형 데이터 factor로 변경하기

pre_train_data <- pre_train_data %>% mutate_if(is.character,as.factor)
pre_X_test <- pre_X_test %>% mutate_if(is.character,as.factor)


# 학습용 데이터를 검증용 데이터로 다시 분할
set.seed(1)
index <- sample(1:nrow(pre_train_data), nrow(pre_train_data)*0.7)


# 추출된 인덱스로 데이터셋을 재구성
train_set <- pre_train_data[index,]
valid_set <- pre_train_data[-index,]



# 분한된 훈련데이터로 분류예측 모형 생성

library(randomForest)
model_rf1 <- randomForest(train_set$travelinsurance~. -id, data=train_set)

library(e1071)
model_svm <- svm(train_set$travelinsurance~. -id, data=train_set)



# 생성된 모델로 검증 데이터 예측하기
pre_rf1 <- predict(model_rf1, newdata=valid_set)
pre_svm <- predict(model_svm, newdata=valid_set)


# 모델 예측성능 확인하기(AUC)
library(pROC)
roc(valid_set$travelinsurance,as.numeric(pre_rf1))# 0.7529
roc(valid_set$travelinsurance,as.numeric(pre_svm)) # 0.7447

# roc의 값이 큰 pre_rf1 최종 모델 선택 후 예측하기
result <- predict(model_rf1, newdata=pre_X_test)


# 평가용 데이터의 ID와 예측된 결과
result <- data.frame(ID=X_test$id,travelinsurance=result)


# 인덱스 번호 없이 '수험번호.csv'파일로 생성하시오.
write.csv(result,'수험번호.csv',row.names=FALSE)


