powerConsumption <- read.table(file = "household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")
dateTime <- paste(powerConsumption$Date, powerConsumption$Time)
dateTime <- as.POSIXlt(dateTime, format = "%d/%m/%Y %H:%M:%S")
powerConsumption <- cbind(dateTime, powerConsumption)
powerConsumption <- powerConsumption[,-c(2,3)]

testData <- subset(powerConsumption, dateTime > "2007-02-01 00:00:00" & dateTime < "2007-02-03 00:00:00")

#with(testData, plot(y= Global_active_power, x=dateTime, xlab = "", ylab = "Global Active Power (kilowatts)", type="l"))
#dev.copy(png, file="plot2.png")
#dev.off()

png(filename = "plot2.png", width = 480, height = 480)
with(testData, plot(y= Global_active_power, x=dateTime, xlab = "", ylab = "Global Active Power (kilowatts)", type="l"))
dev.off()

