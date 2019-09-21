
## Working Directory
getwd()
path <- setwd("C:\\Users\\user 1\\Desktop\\R\\learning_R\\Practice-Set4/")

## data set
download.file("https://ndownloader.figshare.com/files/2292169",
              "data/portal_data_joined.csv")
surveys <- read.csv('data/portal_data_joined.csv')

head(surveys)
tail(surveys)
str(surveys)
colnames(surveys)
row.names(surveys)
