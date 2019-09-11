## Practice Set 2

## calling in built data
#data(iris)
#iris
#plot(iris)


## Set Working directory
setwd("C:\\Users\\user 1\\Desktop\\R\\learning_R\\Practice-Set2 ")

getwd()

## Save and call dataset
#write.csv(iris, "C:\\Users\\user 1\\Desktop\\R\\learning_R\\Practice-Set2\\data.csv")


data<- read.csv("C:\\Users\\user 1\\Desktop\\R\\learning_R\\Practice-Set2\\data.csv", header = T, stringsAsFactors = F)
View(data)
summary(data)

## Loading Packages required
#pkgs <- c('reshape2', 'plyr', 'ggplot2', 'dplyr', 'data.table', 'Lahman')
#install.packages(pkgs)

## Data manipulations
attach(data)

apply(data, MARGIN = 2, max)
lapply(data, max)
sapply(data, max)

average <- function(x){
  max(x)+ min(x)/ 2}
sapply(data, average)

##Random Sampling
random_samp <- iris[sample(nrow(iris),10),]
summary(random_samp)
apply(random_samp, MARGIN = 2, max)

## Suppose we want to see all the data from a particular species
## Say we use the species 'setosa'


## From complete Data Set
setosa <- subset(data, Species== 'setosa', select = c(1:5))
head(setosa)

subset(data, Species== 'setosa' & Sepal.Length > 3)


## Plots(Basic)
plot(data$Petal.Length, data$Petal.Width, main="Iris Data")
plot(data$sepal.width, data$sepal.length, xlim = 5, ylim = 5)
hist(data$Sepal.Length)

plot(data)
## Plots (Advanced)



##loops 
## Apply
## statistics
