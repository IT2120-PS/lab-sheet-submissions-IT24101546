#Part01
setwd("C:\\Users\\IT24101546\\Desktop\\Lab 5\\IT24101546")

data<-read.table("Data.txt",header = TRUE, sep = ",")

names(data)<-c("X1","X2")
fix(data)

#Attach the file into R. So, you can call the variable by their names.
attach(data)

#Display Histogram 
hist(X2, main = "Histogram for Number of Shareholders")

#Part02
#Using the "breaks" command we can define the number of classes we need in the histogram
#along with lower limit and upper limit 
#Using "right" command we can define whether classes have closed intervals or open intervals
histrogram <- hist(X2, main = "Histogram for Number of Shareholders", breaks = seq(130,270,length = 8),right = FALSE)
histrogram
#Part03
#Assign class limits of the frequency distribution into a variable called "breaks"
breaks <- round(histrogram$breaks)
breaks

#Assign class frequencies fo the histogram into a variable called "freq"
freq <- histrogram$counts
freq

#Assign mid points of each class into a variable called "mids"
mids <- histrogram$mids
mids

#assign the variable called "Classes" for the frequency distribution 
Classes <- c()

for(i in 1:length(breaks)-1){
  Classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], "]")
}

#Obtaining frequency distribution by combining the values of "Classes" and "freq" variables 
#"cbind" command used to merge the columns with same length
cbind(Classes = Classes, Frequancy = freq)


#Part04
#Draw frequency polygon
lines(mids, freq)

#Draw frequency polygon in a new plot
#Types l:lines, o:lines with points, p:points
plot(mids, freq, type = "l", main = "Frequency Polygon for shareholders", xlab = "Shareholders", ylab = "Frequancy", ylim = c(0,max(freq)))

#Part05
#Using "cumsum" command we can get cumulative frequencies
cum.freq <- cumsum(freq)

#creating a null variable called "new"
new<-c()

#Using "for" loop to store cumulative frequencies in order to get the o give 
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}

#draw cumulative frequency polygon in a new plot 
plot(breaks, new, type = 'l', main = "Cumulative Frequancy polygon for shareholders", xlab = "Shareholders", ylab = "Cumlative Frequancy", ylim = c(0,max(cum.freq)))
#obtain upper limit of each class along with its cumulative frequency in a table
cbind(Upper = breaks, cumFreq = new)
