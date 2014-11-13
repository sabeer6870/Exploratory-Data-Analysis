source("readData.R")

plot2<-function(){
  data<-readData()
  png(filename = "plot2.png", width = 480, height = 480, units = "px", bg="transparent")
  plot(data$newDate,data$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)")
  dev.off()
}
