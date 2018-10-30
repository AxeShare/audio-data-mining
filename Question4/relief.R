rest <- attrEval(ncol(education), education, estimator = "ReliefFequalK", ReliefIterations = 50)
label[tail(order(rest),2)]

