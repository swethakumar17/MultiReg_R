#dataframe
Problem1 <- data.frame (IQ  = c(45, 81, 65, 97, 68, 91, 77, 61, 55, 76, 82, 110, 76, 83, 61, 74),
                  Behavior=c( 9, 15, 11, 15, 14, 19, 12, 10, 9, 14, 15, 14, 16, 18, 15, 12),
                  FinalScore= c(56, 74, 56, 81, 75, 84, 68, 52, 57, 82, 73, 90, 67, 79, 70, 66)
                  
)
Problem1

#statistics
library(pastecs)
stat.desc(Problem1)


#linear regression model
Prob1 <-lm(FinalScore ~ Behavior, data=Problem1)

summary(Prob1)

coefficients(Prob1)

confint(Prob1)

dim(Problem1)

#Visualizing the scatter plot and regression line
ggplot(Prob1,aes(x=FinalScore,y=Behavior)) +
  geom_point()+
  geom_smooth(method=lm)

#multi regression
Prob1multi <- lm(FinalScore ~ Behavior + IQ, data = Problem1)
summary(Prob1multi)
confint(Prob1multi)
coefficients(Prob1multi)
#prediction
predict(Prob1multi,data.frame(IQ=105,Behavior=18))
