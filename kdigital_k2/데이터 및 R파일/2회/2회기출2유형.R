
# Load necessary libraries
library(readr)
library(dplyr)


# 데이터 불러오기
x_train<- read_csv('x_train.csv')
y_train <- read_csv('y_train.csv')
X_test <- read_csv('X_test.csv')


# 1. 학습데이터 셋으로 만들기
train_data <- merge(x_train,y_train, by='ID')



# 2. 결측치 확인
train_data %>% is.na() %>%  colSums()
X_test %>% is.na() %>%  colSums()

# 3. 데이터 타입 확인 및 변경
str(train_data) # 숫자와 문자가 혼재되어 있는 상태. chr로 되어 있는 변수를 factor로 변경

# 3.1 문자형 데이터 변경

train_data <- train_data %>% mutate_if(is.character, as.factor)
X_test <- X_test %>% mutate_if(is.character, as.factor)


train_data$Reached.on.Time_Y.N  <-  as.factor(train_data$Reached.on.Time_Y.N)

str(train_data)


# 3.2 숫자형 데이터 확인 및 정규화
summary(train_data)
summary(X_test)


# caret 패키지를 설치하고 불러옵니다.
library(caret)



# preProcess 함수를 사용하여 전처리합니다.
preproc <- preProcess(train_data,'range')


# 전처리된 데이터를 확인합니다.
pre_train_data <- predict(preproc, train_data)
pre_X_test <- predict(preproc, X_test)


# 학습용 데이터를 검증용 데이터로 다시 분할
set.seed(1)

index <- sample(1:nrow(pre_train_data), nrow(pre_train_data)*0.7)


# 추출된 인덱스로 데이터셋을 재구성
train_set <- pre_train_data[index,]
valid_set <- pre_train_data[-index,]


# 모델 생성

library(randomForest)
model_rf1 <- randomForest(train_set$Reached.on.Time_Y.N~. -ID, data=train_set)


library(e1071)
model_svm <- svm(train_set$Reached.on.Time_Y.N~. -ID, data=train_set)



# 생성된 모델로 검증 데이터 예측하기
pre_rf1 <- predict(model_rf1, newdata=valid_set)
pre_svm <- predict(model_svm, newdata=valid_set)




# 모델 예측성능 확인하기(AUC)
library(pROC)
roc(valid_set$Reached.on.Time_Y.N,as.numeric(pre_rf1)) # 0.6589


roc(valid_set$Reached.on.Time_Y.N,as.numeric(pre_svm)) # 0.6924


# 최종 선택 모델은  pre_svm으로 평가 데이터로 예측한 값을 넣으면 됩니다.
str(pre_X_test) # 3300*11

pre_result <- predict(model_svm, newdata=pre_X_test)

result=data.frame(ID=X_test$ID,Reached.on.Time_Y.N=pre_result)
write.csv(result,'수험번호.csv',row.names=FALSE)


# 생성된 csv파일 확인
df <- read_csv('수험번호.csv')
str(df)
