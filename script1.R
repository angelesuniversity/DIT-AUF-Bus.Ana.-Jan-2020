set.seed(678)
sd <- read.csv("suicidedeaths.csv")
str(sd)
#head(sd)
ind <- sample(2, nrow(sd),replace=T, prob=c(0.7,0.3))
sd.train <- sd[ind==1, ]
sd.test <- sd[ind==2, ]
#library(party)
sd.formula <- Suicides ~ Year + Age
pred <- predict(sd.ctree, newdata = sd.test)
table(pred, sd.test$Suicides)


