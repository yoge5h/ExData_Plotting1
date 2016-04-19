#Initializes the working directory
Init = function(dir){
	setwd(dir)
}

#Downloads the zip file & unzips it
DownloadAndUnzip = function(){
	if (!file.exists("household_power_consumption.txt")) {
		download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "data.zip")
		unzip("data.zip", overwrite = T)
	}
}
#Preprocesses the data an adds relevant field.
#param: dir -> working directory;
getRelevantData = function(dir){
	Init(dir)
	DownloadAndUnzip()
	data = read.table("household_power_consumption.txt", sep = ";" , header = T, na.strings = "?")
	data$DateTime = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
	data$Date = as.Date(data$Date, format = "%d/%m/%Y")	
	data[data$Date >= as.Date("2007-02-01") & data$Date <= as.Date("2007-02-02"),]
}

