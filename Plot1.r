?strptime()
## read in date/time info in format 'm/d/y h:m:s'
dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
times <- c("23:03:20", "22:29:56", "01:03:30", "18:21:03", "16:56:26")
x <- paste(dates, times)
strptime(x, "%m/%d/%y %H:%M:%S")

?as.Date()
## read in date/time info in format 'm/d/y'
dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
as.Date(dates, "%m/%d/%y")


# load data
load_data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?",header = TRUE, 
                        colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric')) 

# Format date to Type Date
load_data$Date <- as.Date(load_data$Date, "%d/%m/%Y")

# Select data set from 02/01/2007 - 02/02/2007 
subdata <- subset(load_data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

# Remove incomplete observations 
subdata <- subdata[complete.cases(subdata),] 

# Create a new vector
dateTime <- paste(subdata$Date, subdata$Time)
head(dataTime,3)
DateTime<- strptime((dateTime), "%Y-%m-%d %H:%M:%S")
subdata <- cbind(subdata, DateTime)

# Remove Date and Time columes 
subdata <- subdata[ ,!(names(subdata) %in% c("Date","Time"))]
head(subdata,3)

## Plot1 - histogram
hist(subdata$Global_active_power, main = "Global Active Power", xlab = "bal Active Power (kilowatts)", col = "red")

# Save file and close device
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
