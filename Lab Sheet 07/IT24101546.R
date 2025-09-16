setwd("C:\\Users\\THITHIRA.D\\Desktop\\PSLab07")
#Exercise

#1)
#Probability that the train arrives between 8:10 a.m. and 8:25 a.m
punif(25,min=0,max=40,lower.tail = TRUE) - punif(10,min=0,max=40,lower.tail = TRUE)

#2)
#Probability that an update will take at most 2 hours
pexp(2,rate = 0.333,lower.tail = TRUE)

#3)
#i)
#Probability that a randomly selected person has an IQ above 130
1-pnorm(130,mean = 100,sd = 15,lower.tail = TRUE)

#ii)
#IQ score represents the 95th percentile
qnorm(0.95, mean=100, sd=15, lower.tail = TRUE)

