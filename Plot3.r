## Plot 3 
plot(subdata$Sub_metering_1~subdata$DateTime, type = "l", ylab="Global Active Power (kilowatts)", xlab="") 
lines(subdata$Sub_metering_2~subdata$DateTime, col = "red")
lines(subdata$Sub_metering_3~subdata$DateTime, col = "blue")
?legend
legend("topright", col = c("black", "red", "blue"),lwd = c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Save file and close device
dev.copy(png,"plot3.png", width=480, height=480)
dev.off()
