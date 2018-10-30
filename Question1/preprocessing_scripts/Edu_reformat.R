#Cleaning step
#water <- read.csv("~/Downloads/datagov/Education/gross-enrolment-ratio-schools.csv")
#water <- water[order(water$State_UT),]
#newrow <- water[98,]
#water <- rbind(water[1:98,], newrow, water[-(1:98),])
#water[63, "State_UT"] <- as.factor("Madhya Pradesh")
#water[84, "State_UT"] <- as.factor("Pondicherry")
#water[105, "State_UT"] <- as.factor("Uttaranchal")

#newrow <- water[105,]
#water <- water[-105,]
#water <- rbind(water[1:105,], newrow, water[-(1:105),])


#wat <- split(water, water$State_UT)
#wat <- wat[-38]
#wat <- wat[-22]
#wat <- wat[-29]



water <- read.csv("~/Downloads/datagov/Education/gross-enrolment-ratio-schools.csv")
water <- water[order(water$State_UT),]

wat <- split(water, water$State_UT)

df <- data.frame(matrix(unlist(wat), nrow=37, byrow=T))

write.csv(df,file="k.csv")
k <- read.csv("~/k.csv", header=FALSE)
k <- k[-1,-c(1:7)]


k <- cbind(states, k)
colnames(n) <- colnames(k)
k <- rbind(n, k)
#n is different for datasets

write.csv(k , file="an.csv")
an <- read.csv("~/an.csv", header=FALSE)
View(an)

# For constructing n
#k <- 1
#lt <- list()

#for(i in 1:length(year)){
#  for(j in 1:length(coln)){
#    lt[k] <- paste("drop", coln[j], year[i], sep = "_")
#    k = k+1
#  }
#}
#write.csv(lt, file = "n.csv")

