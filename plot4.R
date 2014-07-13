## dataset is downloaded into the household_power_consumption.txt
##
## it is then cleanded up at the terminal promopt with:
## head -n 1 ./household_power_consumption.txt > ./data/feb2007data.txt
## cat ./household_power_consumption.txt  | grep '^0\{0,1\}[12]/0\{0,1\}2/2007' >> ./data/feb2007data.txt

datafile <- "./feb2007data.txt"
data <- read.table(datafile, sep = ";", header = T, na.strings = "?")
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

## plot 4

plot(data$Datetime, data$Global_reactive_power, type = "l", xlab = "datetime", 
     ylab = "Global_reactive_power", ylim = c(0, 0.5))



