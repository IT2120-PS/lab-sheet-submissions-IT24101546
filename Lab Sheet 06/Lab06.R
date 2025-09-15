setwd("C:\\Users\\THITHIRA.D\\Desktop\\Lab 06-20250914")

##Question 01
##Part 01
#Binomial Distribution
#Random variable X has binomial distribution with
#n = 44 & p = 0.02

##Part 02
#It asks to find P(X = 40). Following command gives the density
#In other words, probability of getting an exact value can be calculated with n=44 and p=0.92 
#dbinom(x,size,prob)

#Probability that 40 children are cured
dbinom(40,44,0.92)

##Part 03
#It asks to find P(x<=35). Following command gives the cumulative
#probability (<=), if "lower.tail" argument equals to "TRUE"
#pbinom(q,size,prob,lower.tail = state)

#Probability that less than or equal to 35 children are cured
pbinom(35,44,0.92,lower.tail = TRUE)

##Part 04
#It asks to find P(x>=38). This can be find using "pbinom" command as follows.
#You need to rearrange the probability statement as follows.
#P(x>=38) = 1-P(XX<=37)

#Probability that at least 38 children are cured
1- pbinom(37,44,0.92,lower.tail = TRUE)
#or
#Here, when that argument is "FALSE", it means that P(X>37). 
#Which is the same as P(X>=38)
pbinom(37,44,0.92,lower.tail = FALSE)

##Part 05
#It asks to find P(40<=X<=42). This can find using "pbinom" commands as follows.
#You need to rearrange the probability statement as follows.
#P(40<=X<=42) = P(X<=42) - P(X<=39)

#Probability that between 40 and 42 (both inclusive) children are cured
pbinom(42,44,0.92,lower.tail = TRUE) - pbinom(39,44,0.92,lower.tail = TRUE)

##Question 02

##Part 01
#Number of babies born in a hospital on a given day is 0.05

##Part 02
#Poisson distribution
#Here, random variable X has poisson distribution with lambda = 5

##Part 03
#It asks to find P(X=6). Following command gives the density.
#In other words, probability of getting an exact value can be calculated using 
#"dpois" command.

#Probability that 6 babies will be born in this hospital tomorrow
#dpois(X,lambda)
dpois(6,5)

##Part 04
#It asks to find P(X>6). This can be found using "ppois" command as follows.
#If you can keep "Lower.tail" argument as "TRUE", that means P(X<=6).
#Since we need P(X>6), keep the "Lower.tail" argument as "FALSE". 

#Probability of more than 6 babies be born in this hospital tomorrow
ppois(6,5,lower.tail = FALSE)
