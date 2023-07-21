library(readr)
library(dplyr)

 #1. 데이터 불러오기
library(dplyr)

x_train4 <- read_csv('x_train4.csv')
y_train4 <- read_csv('y_train4.csv')

x_test4 <- read_csv('x_test4.csv')


#.2 결측치 확인하기
colSums(is.na(x_train4))
colSums(is.na(y_train4))
        
colSums(is.na(x_test4))

#3. 데이터 타임 확인
# 데이터 분석에서 무의미한 변수 제거

x_train4 <- x_train4 %>% select(-profession)
x_test4 <- x_test4 %>% select(-profession)

# 문자형 데이터 범주형으로 변경
x_train4 <- x_train4 %>% mutate_if(is.character,as.factor)
x_test4 <- x_test4 %>% mutate_if(is.character,as.factor)

# 종속변수이므로 범주형 변수로 변경
y_train4$segmentation <- as.factor(y_train4$segmentation)


# 4. 숫자형 데이터 정규화
summary(dummy_x_train4)
summary(dummy_x_test4)


# ID는 유의미한 변수가 아니므로 제외하고, preProcess 함수를 사용하여 전처리합니다.
library(caret)
preproc <- preProcess(x_train4[,-1],'range')


# 전처리된 데이터를 확인합니다.
pre_x_train4 <- predict(preproc, x_train4)
pre_x_test4 <- predict(preproc,x_test4)

summary(pre_x_train4)
summary(pre_x_test4)


# 범주형 데이터를 원핫인코딩
library(caret)
dummy <- dummyVars(~ . , data = x_train4)


# 원핫인코딩한 결과를 예측합니다.

dummy_x_train4 <- predict(dummy, newdata =x_train4)



dummy_x_test4 <- predict(dummy, newdata =x_test4)


# 전처리 완료된 상태에서 결과 데이터 합치기
merge_x_train4 <- merge(dummy_x_train4,y_train4, by='id')


# 학습용 데이터를 검증용 데이터로 다시 분할
set.seed(1)
index <- sample(1:nrow(merge_x_train4), nrow(merge_x_train4)*0.7)

# 추출된 인덱스로 데이터셋을 재구성
train_set <- merge_x_train4[index,]
valid_set <- merge_x_train4[-index,]

# 분한된 훈련데이터로 분류예측 모형 생성

library(randomForest)
model_rf1 <- randomForest(train_set$segmentation~. -id, data=train_set)

library(e1071)
model_svm <- svm(train_set$segmentation~. -id, data=train_set)

library(nnet)
model_mul <- multinom(train_set$segmentation ~ . -id, data=train_set)



# 생성된 모델로 검증 데이터 예측하기
pre_rf1 <- predict(model_rf1, newdata=valid_set)
pre_svm <- predict(model_svm, newdata=valid_set)
pred_mul<- predict(model_mul, newdata=valid_set)


# 모델 예측성능 확인하기(f1-score)

# f1-score 계산
install.packages('MLmetrics')
library(MLmetrics)

# f1_score()#, positive = "YES")
F1_Score(pre_rf1,valid_set$segmentation) # 0.4213483
F1_Score(pre_svm,valid_set$segmentation) # 0.4159703
F1_Score(pred_mul,valid_set$segmentation) # 0.3815261


# 최종 선택 모델 (model_rf1)로 예측하여 데이터 프레임으로 컬럼명 ‘segmentation’으로 변환하기
pre_result <- predict(model_rf1, newdata=dummy_x_test4)

result4_2 <- data.frame(segmentation=pre_result)
head(result4_2)

# 인덱스 번호 없이  파일명 ‘result4.csv’파일로 생성하기

write.csv(result4_2,'result4.csv',row.names=FALSE)



