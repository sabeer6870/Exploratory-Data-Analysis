#read data 
data <- read.table("household_power_consumption.txt",head=TRUE,sep=";",na.strings="?")
data<-data[(data$Date >= "2007-02-01" & data$Date<= "2007-02-02"),]
