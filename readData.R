readData <- function(){
  url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  powerdata<-"powerconsumption.zip"
  if(!file.exists(powerdata)) {
      download.file(url=url, destfile=powerdata)
  }
  household_power_consumption.txt<-unz(powerdata,"household_power_consumption.txt")
  data <- read.table("household_power_consumption.txt",head=TRUE,sep=";",na.strings="?")
  data$Date<-strptime(as.character(data$Date), "%d/%m/%Y")
  data<-data[(data$Date >= "2007-02-01" & data$Date<= "2007-02-02"),]
  data$newDate<-as.POSIXct(paste(data$Date, data$Time))
  data
}
