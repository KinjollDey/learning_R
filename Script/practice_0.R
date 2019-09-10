## Remove saved objects from Global environment
rm(list = ls())

## Reading Files In R

setwd("~/Desktop/R/practice")
rm(list = ls())
data <-read.csv("C:/Users/user 1/Desktop/R/practice/data.txt", header = F, stringsAsFactors = T)
head(data)
str(data)
row.names(data)
tail(data)
colnames(data) <- c("Flight_no", "Airport", "From", "Destination", "d1", "d2", "net_charge", "cost")
head(data)
row.names(data)
colnames(data)
colnames(data)[12] <- "Route"

## Shorten Data

data1 <- data[-c(51:1462) , -c(9,10,11,13,14)]
head(data1)
tail(data1)

## Remove Initial dataset
rm(list = ("data"))

## Export
## To hard drive

write.csv(data1, 'C:\\Users\\user 1\\Desktop\\R\\ Airport_data.csv')
save(data1, file = "airportinfo.RData")

## To Googlr Drive

install.packages("googledrive")	
library(googledrive)
drive_upload("Airport_data.csv", name = "Airport Data")

## Confirm upload
drive_browse("Airport Data")

## Dowload from drive

x <- drive_get("Airport Data")
as_id(x)
drive_download(as_id(x), overwrite = TRUE)

## Sorting, Filter, Subset, Replace data
rownames(data1)
colnames(data1)

attach(data1)
sort(Airport)
data_arranged <- data1[order (net_charge) ,]

list1 <- list()
colnames(data_arranged)
list1 <- subset(data_arranged, cost >0 , select = c(2:9))
list2 <- subset(data_arranged, Destination=='Canada', select = -c(5,6,8 ))

rm(list = ("list1"))

## Statistics

range(list2$net_charge)
summary(list2)
head(list2)

L1 <- list2$net_charge
mean(L1)

mean(L1, trim = 1)
median(L1)

L2 <- table(L1)
L2
names(L2)[which(L2 == max(L2))]     ##mode

plot(Destination,net_charge)




## Apply function
## For Loop
## Data Analysis
## Graphs
