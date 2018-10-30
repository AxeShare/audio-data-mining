#In some cases reformat.R doesn't work (unlist function). For those cases use this method.

k=1
j=2
z=3
an <- data.frame()
bn <- data.frame()
cn <- data.frame()

for(i in (1:37)){
  an <- rbind(an, mk[k,])
  bn <- rbind(bn, mk[j,])
  cn <- rbind(cn, mk[z,])
  k <- k+3
  j <- j+3
  z <- z+3
}
df <- cbind(an, bn, cn)
