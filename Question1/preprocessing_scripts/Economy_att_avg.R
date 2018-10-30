f <- function(x){
  x<-as.numeric(as.character(x)) 
  x[is.na(x)] =mean.default(x, na.rm=TRUE)
  x
}

dUp3 <- read.csv("~/Downloads/datagov/Economy/state-wise-net-domestic-product-ndp-current-price.csv", header=FALSE)
d1 <- dUp3$V1
e1 <- dUp3$V2
fIn <- split(dUp3, dUp3$V1)
a1 <- fIn[1]
b1 <- fIn[2]                                       # change b1 = fIn[3] and c1 = fIn[2] for NSDP dataset
c1 <- fIn[3]
write.csv(a1, file="a1.csv")
a1 <- read.csv("~/a1.csv", header = FALSE)
a1 <- a1[-1, -c(1,2,3)]
a1 <- data.frame(apply(a1,2,f))
a1 <- data.frame(apply(a1,1,f))
a1 <- as.data.frame(t(a1))

write.csv(b1, file="b1.csv")
b1 <- read.csv("~/b1.csv", header = FALSE)
b1 <- b1[-1, -c(1,2,3)]
b1 <- data.frame(apply(b1,2,f))
b1 <- data.frame(apply(b1,1,f))
b1 <- as.data.frame(t(b1))

new1 <- rbind(b1,a1)
write.csv(new1, file="new1.csv")
new1 <- read.csv("~/new1.csv", header = FALSE)
new1 <- new1[-1,-1]

write.csv(c1, file="c1.csv")
c1 <- read.csv("~/c1.csv", header = FALSE)
c1 <- c1[-1,-c(1,2,3)]

colnames(c1) <- colnames(new1)
nEw1 <- rbind(c1, new1)
write.csv(nEw1, file="nEw1.csv")
nEw1 <- read.csv("~/nEw1.csv", header = FALSE)
nEw1 <- nEw1[-1, -1]

d1 <- d1[-13]
e1 <- e1[-13]

q1 <- cbind(e1, nEw1)
write.csv(q1, file="q1.csv")
q1 <- read.csv("~/q1.csv", header=FALSE)
q1 <- q1[-1,-1]

r1 <- cbind(d1, q1)
write.csv(r1, file="r1.csv")
r1 <- read.csv("~/r1.csv", header=FALSE)
   View(r1)
r1 <- r1[-1,-1]

file.remove("a1.csv")
file.remove("b1.csv")
file.remove("c1.csv")
file.remove("q1.csv")
file.remove("nEw1.csv")
file.remove("new1.csv")





            




