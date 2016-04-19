Init = function(dir){
	setwd(dir)
}

DownloadAndUnzip = function(){
	if (!file.exists("household_power_consumption.txt")) {
		download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "data.zip")
		unzip("data.zip", overwrite = T)
	}
}

getRelevantData = function(dir, fileName){
	Init(dir)
	DownloadAndUnzip()
	data = read.table(fileName, sep = ";" , header = T, na.strings = "?")
	data$DateTime = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
	data$Date = as.Date(data$Date, format = "%d/%m/%Y")	
	data[data$Date >= as.Date("2007-02-01") & data$Date <= as.Date("2007-02-02"),]
}

