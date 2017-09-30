setwd("C:\\Users\\Mahesha\\Desktop\\Desktop\\Data_Science\\Courseera\\Exploration-Data-Analysis\\exdata_data_household_power_consumption")
data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                 check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
dim(data)
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

## Subsetting the data
datasub <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data)

str(datasub)
globalActivePower <- as.numeric(datasub$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

