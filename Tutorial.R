# http://www.kaggle.com/c/titanic-gettingStarted
# Starting point taken from http://trevorstephens.com/
library(tidyverse)

# Import 
train <- read_csv("data/train.csv")
test <- read_csv("data/train.csv")

# Aim is to predict Survived
# EDA
glimpse(train)

table(train$Survived) # count of survivors
prop.table(table(train$Survived)) # proportion of survivors

# Hypothesis 1 - Everybody Dies

submission_1 <- tibble(PassengerId = test$PassengerId, Survived = 0)
write_csv(submission_1, "submissions/sub1-everyonedies.csv")

