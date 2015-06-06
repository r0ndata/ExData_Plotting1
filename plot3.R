library(lubridate)
data <- read.table('household_power_consumption.txt',header=TRUE,stringsAsFactors=FALSE,sep=';')
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
dateTime   <- as.POSIXlt(paste(as.Date(data$Date, format="%d/%m/%Y"), data$Time, sep=" "))
plot(dateTime, data$Sub_metering_1, ylab ="Energy sub metering", type = "l")
lines(dateTime, data$Sub_metering_2, type = "l", col = "red")
lines(dateTime, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", lwd = 2, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))