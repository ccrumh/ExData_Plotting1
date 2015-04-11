#Plot3.R
#Created by: ccrumh
#Date: 4/9/2015
#Project 1 Coursera - Exploratory Data Analysis Class
#Input: household_power_consumption.txt
#       This input file contains the measurements of electric power consumption 
#        in one household with a one-minute sampling rate over a period of almost 
#        4 years. Different electrical quantities and some sub-metering values are available.
#Output:Plot2.png
#       PNG file containing a graphical representation of Sub Metering 1,2,3/ DateTime

datafile <- "household_power_consumption.txt"

# Read the data file into a table
HHPower = read.table(datafile, header = TRUE, sep=";",
                     stringsAsFactors=F,na.strings = "?", 
                     colClasses = c(Date = "character", Time = "character"))

# Define date format
HHPower$Date <- as.Date(HHPower$Date,format="%d/%m/%Y")

# Select only the two days needed for reporting
HHPowersub <- HHPower[HHPower$Date >="2007-02-01" & HHPower$Date <="2007-02-02",]   

#Combine the date and time field and format 
HHPowersub$DateTime <- 
  strptime(paste(HHPowersub$Date, HHPowersub$Time, sep=" "),"%Y-%m-%d %H:%M:%S")       

#Plot 3
#open output png file for writing
png(filename = "Plot3.png", width = 480, height=480)

#Generate a graphical representation of  of Sub Metering 1,2,3/ DateTime
with(HHPowersub, {
     plot( HHPowersub$DateTime, HHPowersub$Sub_metering_1 , col = "Black", type = "l",
                          ylab = "Energy sub metering", xlab = "")
     lines ( HHPowersub$DateTime, HHPowersub$Sub_metering_2 , col = "Red" , type = "l" )
     lines( HHPowersub$DateTime, HHPowersub$Sub_metering_3 , col = "Blue", type = "l"  )
     legend( "topright",  lty= 1, col = c("black", "red", "blue"),
             legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
             })
dev.off()  ## Close the png file device                                                          

