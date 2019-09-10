## Practice Set 2

## calling in built data
data(iris)
iris
plot(iris)


## Set Working directory
setwd("C:\\Users\\user 1\\Desktop\\R\\learning_R\\Practice-Set2 ")

getwd()

## Save and call dataset
write.csv(iris, "C:\\Users\\user 1\\Desktop\\R\\learning_R\\Practice-Set2\\data.csv")
data<- read.csv("C:\\Users\\user 1\\Desktop\\R\\learning_R\\Practice-Set2\\data.csv", header = T, stringsAsFactors = F)
View(data)

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

##loops 
## Apply
## statistics
## Plots(Basic)
## Plots (Advanced)
