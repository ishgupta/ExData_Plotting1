powerConsumption <- read.table(file = "household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")
powerConsumption$Date <- format(as.Date(powerConsumption$Date, format="%d/%m/%Y"), format="%d-%m-%Y")
powerConsumption$Date <- as.Date(powerConsumption$Date, format="%d-%m-%Y")
powerConsumption$Time <- strptime(powerConsumption$Time, format = "%H:%M:%S")

testData <- subset(powerConsumption, Date=="2007-02-01" | Date=="2007-02-02")

hist(testData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

png(filename="plot1.png", width=480, height=480, units="px")
hist(testData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

# dev.copy(png, file="plot1.png")
# dev.off()