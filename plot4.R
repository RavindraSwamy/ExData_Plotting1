## before executng this script, set your working directory to 


library(sqldf)
epc <- read.csv.sql("household_power_consumption.txt", sql = "select *, Date||' '||Time as DateTime from file where Date in ('1/2/2007','2/2/2007') ", sep = ";")
closeAllConnections()


#plot 4
png("plot4.png", height=480, width=480)
par(mfrow = c(2,2))

plot(epc$DateTime, epc$Global_active_power, type="l", xlab="", ylab = "Global Active Power (Kilowatts)")

plot(epc$DateTime, epc$Voltage, type="l", xlab="datetime", ylab = "Global Active Power (Kilowatts)")

plot(epc$DateTime, epc$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(epc$DateTime,epc$Sub_metering_2, type="l", col="Red")
lines(epc$DateTime,epc$Sub_metering_3, type="l", col="Blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("Black","Red","Blue"), lty=1, bty="n")

plot(epc$DateTime, epc$Global_reactive_power, type="l", xlab="datetime", ylab = "Global Reactive Power")


dev.off()


