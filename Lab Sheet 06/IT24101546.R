setwd("C:\\Users\\THITHIRA.D\\Desktop\\Lab 06-20250914")
#Exercise 

##Q1

#P1
#What is the distribution of X?
0.85

#P2
#What is the probability that at least 47 students passed the test?
dbinom(47,50,0.85)

##Q2

#P1
#What is the random variable (X) for the problem?
#number of customer calls received in a given time period

#P2
#What is the distribution of X?
12

#P3
#What is the probability that exactly 15 calls are revived in an hour?
dpois(15,12)
