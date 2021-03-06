house<-read.table("household_power_consumption.txt",sep = ";",stringsAsFactors = FALSE,na.strings = "?",header = TRUE)
house_data <- house[house$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(house_data$Date, house_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot1.png",width = 480,height = 480)
hist(house_data$Global_active_power,col="red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()
