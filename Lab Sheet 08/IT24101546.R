setwd("C:\\Users\\THITHIRA.D\\Desktop\\Y2S1\\IT24101546")
getwd()

#random sample of size 25 for the baking time
sample <- rnorm(25, mean =45, sd =2)

# Test whether the average baking time is less than 46 minutes at a 5% level of significance.
t.test (sample, mu=46, alternative = "less")
