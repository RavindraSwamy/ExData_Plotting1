## before executng this script, set your working directory to 


library(sqldf)
epc <- read.csv.sql("household_power_consumption.txt", sql = "select *, Date||' '||Time as DateTime from file where Date in ('1/2/2007','2/2/2007') ", sep = ";")
closeAllConnections()

# plot1
par(mfrow = c(1,1))
hist(epc$Global_active_power, col="Red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()



