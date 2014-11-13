source("readData.R")

plot3<-function(){
  data<-readData()
  png(filename = "plot3.png", width = 480, height = 480, units = "px", bg="transparent")
  cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  plot(data$newDate, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(data$newDate, data$Sub_metering_2, type="l", col="red")
  lines(data$newDate, data$Sub_metering_3, type="l", col="blue")
  legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols,cex=0.5)
  dev.off()
}
