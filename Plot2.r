## Plot2
?plot() #type of plot should be drawn
plot(subdata$Global_active_power~subdata$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

# Save file and close device
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()