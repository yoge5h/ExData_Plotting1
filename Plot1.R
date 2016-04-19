plot1 = function(data){
	jpeg(filename = "Plot1.jpeg",width = 480, height = 480, units = "px")
	 hist(data$Global_active_power
	, xlab = "Global Active Power (Kilowatts)"
	, col = "red", ylab = "Frequency"
	, main = "Global Active Power")
	dev.off()
}