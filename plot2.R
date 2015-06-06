library(lubridate)
data <- read.csv('house.txt',header=TRUE,stringsAsFactors=FALSE,sep=';')
dateTime <- as.POSIXlt(paste(as.Date(data$Date, format="%d/%m/%Y"), data$Time, sep=" "))
df <- data.frame(data$Date, data$Time, dateTime, data$Global_active_power)
myfunc <- function(x,y){df[df$Date == x & df$Date == y,]}
subset <- myfunc(as.Date("2/1/2007"), as.Date("2/2/2007"))
hist(as.numeric(as.vector(subset$Global_active_power)), col = "red")