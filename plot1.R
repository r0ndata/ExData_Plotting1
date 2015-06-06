library(lubridate)
data <- read.csv('household_power_consumption.txt',header=TRUE,stringsAsFactors=FALSE,sep=';')
data.sub <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
hist(as.numeric(data.sub$Global_active_power), main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")