setwd("C:\\Users\\IT24101546\\Desktop\\Lab 07\\IT24101546")

##Question 01
#Part 1
#What is the probability that the bus arrives within the first 10 minutes after 7.00 am?

#Uniform distribution 
#Here, random variable x follows a uniform distribution with a=0 and b=30
#It asks to find P(x<=10). following command gives the cumulative 
#probability  (<=), if "lower.tail" argument equals to "TRUE".
punif(10,min=0, max=30,lower.tail=TRUE)
#Part 2
#It asks to find P(X>20). This can find using "punif" command as follows.
#You need to rearrange the probability statment as follows. 
#P(X>20) = 1-P(X<=20)
#Then command will be as follows
1-punif(20,min=0,max=30,lower.tail = TRUE)

#Part 2
#What is the probability that the bus arrives after 7.20am?

#It asks to find P(X>20). This can find using "punif" command as follows.
#You need to rearrange the probability statement as follows.
#P(X>20) = 1-p(X<=20)
#Then command will be as follows.
1-punif(20,min=0,max=30,lower.tail=TRUE)
#Or else following command can also used by keeping argument "lower.tail" as "FALSE".
punif(20,min=0,max=30,lower.tail=FALSE)

