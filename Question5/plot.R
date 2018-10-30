l <- education[,138]      #Selected attribute
m <- education[,168]      #Selected attribute
m <- m[-1]
m <- as.numeric(as.character(m))
l <- l[-1]
l <- as.numeric(as.character(l))

qqplot(l,m,  main="Demography Attributes Q-Q plot", xlab="Decadal growth rate - Urban - 1991-01", ylab="Sex ratio of total population - Rural - 2011 ")