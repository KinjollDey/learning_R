getwd()

seq <- read.table("Insulin Sequence.fasta", header = T, sep = '/')
head(seq)
seq1 <- apply( seq , 1 , paste , collapse = " " )
head(seq1)
class(seq1)
dim(seq1)
length(seq1)

count <- function(x){
  if (x == A){
    print(A== 0+1)
  } 
  else if (x == T){
    print(T == 0+1)
  }
  }

for(i in 1: length(seq)){
if (seq[i] == 'A')
  print(count(seq))
}
  
  
  
  
strsplit(seq1, "")[[1]]
table(strsplit(seq1, "")[[1]])
