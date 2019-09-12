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
head(data)
str(data)

plot(data$Sepal.Length)  ## Scatter Plot

hist(data$Sepal.Length,col = c("blue", "brown", "yellow"))  ## Histogram

plot(data$Sepal.Length, type = 's', col = c("blue", "brown", "yellow"))    ## Points(scatter plot) and lines
plot(data$Sepal.Length, type = 'S')    ## 
boxplot(data$Sepal.Length ~ data$Species)
boxplot(data$Petal.Length ~ data$Species, col = c("blue", "brown", "yellow"))

## Applying loops on graphs
attach(data)


## editing Plots
plot(data$Petal.Length, data$Petal.Width, main = "Iris Data", xlab = "petal.length", ylab = "petal.width", 
     xlim = c(-0.2,7.2), ylim = c(-0.1,2.8))

## Changing the points and symbol types
#example("pch")
plot(data$Petal.Length, data$Petal.Width, pch = 2, main = "Iris Data", xlab = "petal.length", ylab = "petal.width", 
     xlim = c(-0.2,7.2), ylim = c(-0.1,2.8))

## Adding color to the plot
plot(data$Sepal.Length, data$Sepal.Width, pch = 19, col= 'red', main = "Iris Data", 
     xlab = "sepal.length", ylab = "sepal.width" )

colors1 <- c("red", "blue", "green")[as.factor(data$Species)]       ## Since col argument takes a vector
plot(data$Sepal.Length, data$Sepal.Width, pch = 19, col= colors1, main = "Iris Data", xlab = "sepal.length",
     ylab = "sepal.width")   
legend('topright', legend = unique(data$Species), cex= 0.75, pt.cex = 1,  col = c("red", "blue", "green"), pch = 19,
       text.col = c("red", "blue", "green")) 

## Merging Multiple Graphs
#1
par(mfrow= c(1,2))
colors <- c("red", "blue", "green")[as.factor(data$Species)]       ## Since col argument takes a vector
plot(data$Sepal.Length, data$Sepal.Width, pch = 19, col= colors, main = "Iris Data- Sepal", xlab = "sepal.length",
     ylab = "sepal.width")   

colors <- c("red", "blue", "green")[as.factor(data$Species)]       ## Since col argument takes a vector
plot(data$Petal.Length, data$Petal.Width, pch = 19, col= colors, main = "Iris Data-Petal", xlab = "petal.length",
     ylab = "petal.width")   

#2
layout(matrix(1:4, 2, 2))
boxplot(data$Sepal.Length~data$Species, main = "Boxplot of Sepal Length",
        xlab = "Species", ylab = "Sepal Length", col = c("red","green3","blue"),
        cex.lab = 1.25)
hist(data$Sepal.Length, main = "Histogram of Sepal Length",
     xlab = "Sepal Length", ylab = "Frequency", col = c("grey"), cex.lab = 1.25)
plot(data$Sepal.Length, type = 'l', lty = 2, lwd = 2, col = 'red',
     main = "Variation with of Petal Width and Petal Length",
     xlab = "Petal Length", ylab = "Petal Width", cex.lab = 1.25)
plot(data$Petal.Length, data$Petal.Width, pch = 8, col = colors,
     main = "Scatter plot of Petal Width and Petal Length",
     xlab = "Petal Length", ylab = "Petal Width", cex.lab = 1.25)


##loops 
# histogram using for loop on columns 
par(mfrow = c(2,2))
for(i in 2:5) {
  hist(data[,i], main = names(data)[i], col = c("blue", "brown", "yellow"))
}

# Box-plot using for loop in columns
par(mfrow=c(1,4))
for(i in 2:5) {
  boxplot(data[,i], main=names(data)[i], col = rainbow(4))
}


## Plots (Advanced)
# Using ggplot2


## statistics
