Plot4 = function(data){
	source("Plot2.R")
	source("Plot3.R")
	jpeg(filename = "Plot4.jpeg",width = 480, height = 480, units = "px")
	par(mfrow = c(2,2))
	
	 plot(data$DateTime, data$Global_active_power
	, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
	
	plot(data$DateTime, data$Voltage,xlab = "datetime", ylab = "Voltage", type = "l")
	
	plot(data$DateTime, data$Sub_metering_1
		, type = "l", xlab = "", ylab = "Energy Sub metering")
	lines(data$DateTime, data$Sub_metering_2
		, type = "l", xlab = "", ylab = "Energy Sub metering", col="red")
	lines(data$DateTime, data$Sub_metering_3
		, type = "l", xlab = "", ylab = "Energy Sub metering", col="blue")
	legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", 
		"Sub_metering_2", "Sub_metering_3"))
	
	plot(data$DateTime, data$Global_reactive_power,xlab = "datetime",ylab="Global_reactive_power", type = "l")
	dev.off()
}