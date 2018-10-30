roundUp <- function(x) 10^floor(log10(x))

l <- relief_demo$V13      #Selected attribute
m <- relief_demo$V18      #Selected attribute
m <- m[-1]
m <- as.numeric(as.character(m))
l <- l[-1]
l <- as.numeric(as.character(l))

p <- l      #Select the feature to be partitioned

#95th percentile
for(i in 1:10){
  if(roundUp(quantile(p, probs = 0.95))*i > quantile(p, probs = 0.95)){
       max <- roundUp(quantile(p, probs = 0.95))*i
       break
       }
}

#5th percentile
for(i in 1:10){
    if(roundUp(quantile(p, probs = 0.05))*i > quantile(p, probs = 0.05)){
       min <- roundUp(quantile(p, probs = 0.05))*(i-1)
       break
    }
}

#Upper range for the partition
for(i in 1:(max/roundUp(quantile(p, probs = 0.05)))){
  if(roundUp(quantile(p, probs = 0.05))*i > max(p)){
    max_ <- roundUp(quantile(p, probs = 0.05))*(i)
    break
  }
}

#Lower range for partition
for(i in 1:10){
  if(roundUp(quantile(p, probs = 0.05))*i > min(p)){
    min_ <- roundUp(quantile(p, probs = 0.05))*(i-1)
    break
  }
}

#3 equal sized partitions
rt <- ceiling((max_ - min)/3)
range <- ceiling((max_ - min_)/rt)


for(i in 1:range){
  if(min(p)<0)
  {print(unname(c(-(min_+rt), min_)))
    p <- 0}
  print(unname(c(min_, min_+rt)))
  min_ <- min_ + rt
}
