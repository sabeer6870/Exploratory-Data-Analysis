readData <- function(){
  url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  if(!file.exists(FileName)) {
      download.file(url=url, destfile=powerdata)
  }
  household_power_consumption.txt<-unz(powerdata,"household_power_consumption.txt")
  data <- read.table("household_power_consumption.txt",head=TRUE,sep=";",na.strings="?")
  data<-data[(data$Date >= "2007-02-01" & data$Date<= "2007-02-02"),]
  data$newDate<-as.POSIXct(paste(data$Date, data$Time))
  data
}
