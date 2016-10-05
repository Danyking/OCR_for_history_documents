setwd("~/desktop/machine learning/project/svm")
library(e1071)
library(data.table)

train = data.frame(fread("train.csv"))
test = data.frame(fread("test.csv"))

train.x = train[,10:438]
train.y = as.factor(train[,2])
train = data.frame(train.y, train.x)
test.x = test[,10:438]
test.id = test[,1]

model = svm(train.y~., data = train_new, cost = 1.9)
 
result = predict(model, test_new)

dat = data.frame(Id = test.id, Character = result)
write.csv(dat, "svm_submission.csv", row.names = F)
