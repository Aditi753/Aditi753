getwd()
setwd("C:/Users/LENOVO/Desktop")
data_iris<-read.csv("iris_data.csv")
ir_data<-data_iris
head(ir_data)
str(ir_data)
levels(ir_data$Species)
sum(is.na(ir_data))
ir_data<-ir_data[1:100,]
library(ggplot2); library(GGally)
ggpairs(ir_test)
y<-ir_test$Species; x<-ir_test$SepalLengthCm
glfit<-glm(y~x, family = 'binomial')
summary(glfit)
newdata<- data.frame(x=ir_ctrl$SepalLengthCm)
predicted_val<-predict(glfit, newdata, type="response")
prediction<-data.frame(ir_ctrl$SepalLengthCm, ir_ctrl$Species,predicted_val)
prediction
write.csv(prediction,file="predictive_modeling.csv",row.names=FALSE)
getwd()
history(10000)

