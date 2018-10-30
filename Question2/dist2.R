norm_vector <- function(x) sqrt(sum(x^2))

#Features is attribute vector or state name vector 
fgh <- lapply(features, as.character)
fgh <- lapply(fgh, as.vector)
label <- c(1:length(features))
names(label) <- fgh

for(i in 1:ncol(relief_un)){
  relief_un[,i] <- as.numeric(as.character(relief_un[,i]))
}


k <- 1
distv <- list()

for(i in 2:37){
  distvec <- com[1,] - com[i,]
  distv[k] <- norm_vec(distvec)
  k <- k+1
}

distv <- unlist(distv)
dtn <- order(distv)
label[head(dtn,5)]
