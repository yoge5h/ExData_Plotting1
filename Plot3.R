Plot3 = function(data){
	jpeg(filename = "Plot3.jpeg",width = 480, height = 480, units = "px")
	plot(data$DateTime, data$Sub_metering_1
		, type = "l", xlab = "", ylab = "Energy Sub metering")
	lines(data$DateTime, data$Sub_metering_2
		, type = "l", xlab = "", ylab = "Energy Sub metering", col="red")
	lines(data$DateTime, data$Sub_metering_3
		, type = "l", xlab = "", ylab = "Energy Sub metering", col="blue")
	legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", 
		"Sub_metering_2", "Sub_metering_3"))
	dev.off()
}