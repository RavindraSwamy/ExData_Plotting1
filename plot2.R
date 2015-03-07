## before executng this script, set your working directory to 


library(sqldf)
epc <- read.csv.sql("household_power_consumption.txt", sql = "select *, Date||' '||Time as DateTime from file where Date in ('1/2/2007','2/2/2007') ", sep = ";")
closeAllConnections()


# plot2

epc$DateTime <- strptime(epc$DateTime, "%d/%m/%Y %H:%M:%S")
plot(epc$DateTime, epc$Global_active_power, type="l", xlab="", ylab = "Global Active Power (Kilowatts)")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()



