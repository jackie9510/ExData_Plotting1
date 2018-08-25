## Plot 4 
par(mfrow = c(2,2), mar=c (4,4,2,1), oma = c(0,0,1,0))

plot(subdata$Global_active_power~subdata$DateTime, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="")

plot(subdata$Voltage~subdata$DateTime, type="l", ylab="Voltage (volt)", xlab="")

plot(subdata$Sub_metering_1~subdata$DateTime, type = "l", 
     ylab="Global Active Power (kilowatts)", xlab="") 
lines(subdata$Sub_metering_2~subdata$DateTime, col = "red")
lines(subdata$Sub_metering_3~subdata$DateTime, col = "blue")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(subdata$Global_reactive_power~subdata$DateTime, type="l", 
     ylab="Global Rective Power (kilowatts)", xlab="")

# Save file and close device
dev.copy(png,"plot4.png", width=480, height=480)
dev.off()
