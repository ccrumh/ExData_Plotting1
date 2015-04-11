#Plot1.R
#Created by: ccrumh
#Date: 4/9/2015
#Project 1 Coursera - Exploratory Data Analysis Class
#Input: household_power_consumption.txt
#       This input file contains the measurements of electric power consumption 
#        in one household with a one-minute sampling rate over a period of almost 
#        4 years. Different electrical quantities and some sub-metering values are available.
#Output:Plot1.png
#       PNG file containing a histogram of Global Active power / Frequency

datafile <- "household_power_consumption.txt"

# Read the data file into a table
HHPower = read.table(datafile, header = TRUE, sep=";",
               stringsAsFactors=F,na.strings = "?", 
               colClasses = c(Date = "character", Time = "character"))

# Define date format
HHPower$Date <- as.Date(HHPower$Date,format="%d/%m/%Y")

# Select only the two days needed for reporting
HHPowersub <- HHPower[HHPower$Date >="2007-02-01" & HHPower$Date <="2007-02-02",]   

#Plot 1
## Open PNG Device
png(filename = "Plot1.png", width = 480, height=480)

## Create histogram of Global Active power / Frequency
hist(HHPowersub$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowats)", col="red")

## Close the file device
dev.off()  
