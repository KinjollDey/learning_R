## Functions:-

path <- getwd()
setwd("C:\\Users\\user 1\\Desktop\\R\\learning_R\\Practice-set3")

set.seed(123)
?cumsum
ls(environment())

###

data_seq <- read.table("E.coli 25922.txt", header= F, sep = '/')
head(data_seq)
typeof(data_seq)

string <- apply( data_seq , 1 , paste , collapse = " " )
head(string)
class(string)

strsplit(string, "")[[1]]
table(strsplit(string, "")[[1]])

 
