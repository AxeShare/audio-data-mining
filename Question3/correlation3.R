tmp <- cor(com)
tmp[upper.tri(tmp)] <- 0
diag(tmp) <- 0

k <- 0

for(i in 1:length(features)){
  for(j in 1:i){
    if( tmp[i,j] > 0.95){
      print(label[c(i,j)])
      k <- k+1
    }
  }
}