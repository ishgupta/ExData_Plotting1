plot.new()
par(mfrow = c(2,2))

with(testData, plot(y= Global_active_power, x=dateTime, xlab = "", ylab = "Global Active Power (kilowatts)", type="l"))

with(testData, plot(y=Voltage, x=dateTime, type="l"))

plot(x=testData$dateTime, y=testData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(testData$dateTime, testData$Sub_metering_2, type="l", col="red")
lines(testData$dateTime, testData$Sub_metering_3, type="l", col="blue")
legend("topright", lwd=1 ,col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.5, bty="n")

with(testData, plot(y=Global_reactive_power, x=dateTime, type="l"))

dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()


