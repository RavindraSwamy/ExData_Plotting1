## before executng this script, set your working directory to 


library(sqldf)
epc <- read.csv.sql("household_power_consumption.txt", sql = "select *, Date||' '||Time as DateTime from file where Date in ('1/2/2007','2/2/2007') ", sep = ";")
closeAllConnections()


#plot3

plot(epc$DateTime, epc$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(epc$DateTime,epc$Sub_metering_2, type="l", col="Red")
lines(epc$DateTime,epc$Sub_metering_3, type="l", col="Blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("Black","Red","Blue"), lty=1, lwd=2)
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()



