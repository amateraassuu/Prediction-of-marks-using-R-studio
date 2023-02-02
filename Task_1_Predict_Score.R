# Importing the CSV file with the data set.

df<-read.csv("C:/Users/Sahil/Desktop/task1.csv",header=TRUE)

#Applying lm()function & building a model

model<-lm(Score~Hours,data=df)
print(model)

#Getting the summary of the model

print(summary(model))

#Finding the score for studying 9.25hrs 

a<-data.frame(Hours=9.25)
result<-predict(model,a)
print(result)

#Visualize the regression.

plot(x=df$Hours,y=df$Score,col = "blue",main = "Regression to predict score",
     abline(lm(df$Score~df$Hours)),cex = 1.3,pch = 16,xlab = "Hours Studied",ylab = "Score Scored")


# According to the regression model if a student studies for 9.25 hours a day he/she is likely to score 91.86 marks.