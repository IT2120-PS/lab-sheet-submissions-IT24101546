#1)
setwd("C:\\Users\\IT24101546\\Desktop\\Lab 5\\IT24101546")

#1)
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
names(Delivery_Times)<-c("X1")
fix(Delivery_Times)

attach(Delivery_Times)

#2)
histrogram <- hist(Delivery_Times$X1, main = "Histogram for Delivery Times ",xlab = "Times", ylab = "Dilivery", breaks = seq(20,70,length = 10),right = TRUE)

#3)


#4)
cumfreq <- cumsum(histrogram$counts)
mids <- histrogram$mids
plot(mids,cumfreq,type = 'o',main = "Cumulative Frequancy Polygan for Delivery Times", xlab = "Delivery", ylab = "Frequancy", ylim = c(0,max(cumfreq)))

