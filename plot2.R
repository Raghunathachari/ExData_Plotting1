setwd("C:/Users/rpchari/Desktop/coursera/Exploratory data analysis/Week1/course project1")
myfile <- "household_power_consumption.txt"
mydata <- read.table(myfile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
requddata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]

str(requddata)
datetime <- strptime(paste(requddata$Date, requddata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(requddata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
