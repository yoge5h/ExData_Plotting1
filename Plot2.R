Plot2 = function(data){
	jpeg(filename = "Plot2.jpeg",width = 480, height = 480, units = "px")
	 plot(data$DateTime, data$Global_active_power
	, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
	dev.off()
}