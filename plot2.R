library(lubridate)
data <- read.csv('household_power_consumption.txt',header=TRUE,stringsAsFactors=FALSE,sep=';')
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
dateTime   <- as.POSIXlt(paste(as.Date(data$Date, format="%d/%m/%Y"), data$Time, sep=" "))
plot(dateTime, data$Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l")
