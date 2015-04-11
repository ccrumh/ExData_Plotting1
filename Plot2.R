#Plot2.R
#Created by: ccrumh
#Date: 4/9/2015
#Project 1 Coursera - Exploratory Data Analysis Class
#Input: household_power_consumption.txt
#       This input file contains the measurements of electric power consumption 
#        in one household with a one-minute sampling rate over a period of almost 
#        4 years. Different electrical quantities and some sub-metering values are available.
#Output:Plot2.png
#       PNG file containing a graphical representation of Global Active power / DateTime


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

#Plot 2
## Open the png device
png(filename = "Plot2.png", width = 480, height=480)

#Create a graph of Global Active power / DateTime
with(HHPowersub, plot(HHPowersub$DateTime, HHPowersub$Global_active_power , type = "l", 
                 ylab = "Global Active Power (kilowats)", xlab = ""))

dev.off()  ## Close the PDF file device
