## Set Working Directory
setwd("C:\\Users\\user 1\\Desktop\\R\\learning_R\\Practice-Set2 ")

##Import Data
data <- read.csv("data.csv", header = T, stringsAsFactors = F)
data1 <- subset(data, select = -1)
rm(list = ("data"))
head(data1)
str(data1)

library(tidyverse)
library(ggplot2)

## Base Plot
ggplot(data = data1, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point()


## Background theme:- 
ggplot(data = data1, aes(x = Petal.Length, y = Sepal.Length, colour = Species)) + 
  geom_point() +
  ggtitle('Iris Species by Petal and Sepal Length')+
  theme_bw()

## geom_line() and geom_smooth()
ggplot(data = data1, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point() + 
  geom_line()

ggplot(data = data1, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point(aes(shape = Species), size = 2) + 
  scale_shape_manual(values = c(16, 18, 15)) + 
  scale_color_manual(values = c("blue",
                                "red",
                                "green3")) 


## Facetting: split the three variables onto their own graphs, while keeping the axes standardized.
ggplot(data = data1, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point(size = 3) + 
  geom_smooth(size = 1, se = FALSE) + 
  facet_wrap(~ Species)+
  scale_shape_manual(values = 1)+
  scale_color_manual(values = c("blue",
                                "red",
                                "green3"))
ggsave("data1.pdf")

       