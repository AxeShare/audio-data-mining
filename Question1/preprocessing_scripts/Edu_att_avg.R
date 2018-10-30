#Auxiliary function
#header.true <- function(df) {
#  names(df) <- as.character(unlist(df[1,]))
#  df[-1,]
#}


copy <- read.csv("~/Downloads/datagov/Education/drop-out-rate.csv")
colnames(copy)[1] <- "V1"
colnames(copy)[2] <- "V2"

c1 <- copy$V1
c2 <- copy$V2

copy <- copy[,-c(1,2)]
copy <- data.frame(apply(copy,2,f), stringsAsFactors = FALSE)
# If row average needs to be taken, also add the transpose function
# copy <- as.data.frame(t(copy))

copy <- cbind(c2, copy)
copy <- cbind(c1, copy)

write.csv(copy, file="copy.csv")
View(copy)
