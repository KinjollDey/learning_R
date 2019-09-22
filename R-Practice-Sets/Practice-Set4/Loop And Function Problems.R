
## Working Directory
getwd()
path <- setwd("C:\\Users\\user 1\\Desktop\\R\\learning_R\\Practice-Set4/")

## data set
download.file("https://ndownloader.figshare.com/files/2292169",
              "data/portal_data_joined.csv")
surveys <- read.csv('data/portal_data_joined.csv', stringsAsFactors = F)

## Data Info
head(surveys)
tail(surveys)
colnames(surveys)
row.names(surveys)

## Data Summary
str(surveys)
summary(surveys)
is.na(surveys)              


## Question 1: Remove the missing labels and annotate them as "missing" 
plot(surveys$sex)

sex <- surveys$sex
head(sex)
levels(sex)

levels(sex)[1]<- "Missing"
levels(sex)

head(sex)

## Applying Functions and Loops
## Q2:- Quick visualize Weight vs frequency
## Q3:- check to see if the entry in surveys table is from 1984 or not
## Q4:- adjust all of weight up by 10% if the measurement was taken in 1984.

## Quick Visualisation:- 
hist(surveys$weight, main = "Distribution of weights", xlab = "weight in g", col = "red")

## If/else Statement for chechking 
if (surveys$year[1] == 1984){
  print("Its the year 1984")
}  else { 
  print("not the correct year")
}
## this statement only takes the first element so we try to use for loop

## Loop

dim(surveys)

for (i in 1:dim(surveys)[1]){
if (surveys$year[i] == 1984){
  print("Its the year 1984")
}
  else {
    print("NOT the Correct Year")
  }
}

  
## To increase the weight by 10% 
## We can use the same loop concept

surveys_corrected <- surveys ## To keep the originally loadeddataset intact

## For Loop
for(i in 1:dim(surveys_corrected)[1]){
  if (surveys_corrected$year[i] == 1984) {
    surveys_corrected$weight[i] <- surveys_corrected$weight[i]*1.1
  }
}

## Checking if loop worked as expected

mean(surveys_corrected$weight, na.rm = T)
mean(surveys$weight, na.rm = T)
## Mean increased
## Check if this mean in survey_corrected is 10%
mean(surveys$weight*1.1, na.rm = T)

## Functions:
## QUestion 5: Scientists have noticed more problems with the data.
## They were wrong about the calibration issues in 1984, and have told us to discard the updated table we made. 
## However, they realize that the person who recorded the data in 1984 somehow transformed all of the data they collected 
## both the weights and the hindfoot_length. 
##To get the correct values, we will need multiply the recorded values by 1.1245697375083747 and 
##add 10 to both of those variables. 


## We build a function and then apply it in loop

surveys_adjusted <- surveys_corrected

## Define Function
change_1984 <- function(x){
  x_adjusted <- x*1.1245697375083747+10
  return(x_adjusted)
}

## Using For Loop

for (i in 1:dim(surveys_adjusted)[1]) {
  if (surveys_adjusted$year[i] == 1984) {
    surveys_adjusted$weight[i] <- change_1984(surveys$weight[i])
    surveys_adjusted$hindfoot_length[i] <- change_1984(surveys$hindfoot_length[i])
  } 
  
}
mean(surveys_adjusted$hindfoot_length, na.rm = T)
mean(surveys_corrected$hindfoot_length, na.rm = T)

## Done