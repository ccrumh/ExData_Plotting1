---
output: word_document
---
# Project1 Plotting
##CodeBook.md
##Ccrumh
## 4-10-2015

##CodeBook for Coursera Exploratory Data Analysis Project 1

##This document describes the variables, the data, and R programming used to create the plots

Project data source: 
One dataset from the UC Irvine Machine Learning Repository,  
 "Individual household electric power consumption Data Set"  
 Download https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

Variables in dataset
* Date: Date in format dd/mm/yyyy

* Time: time in format hh:mm:ss

* Global_active_power: household global minute-averaged             active power (in kilowatt)

* Global_reactive_power: household global minute-averaged reactive power (in kilowatt)

* Voltage: minute-averaged voltage (in volt)

* Global_intensity: household global minute-averaged current intensity (in ampere)
 
* Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen

* Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room

* Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner

 To run the R scripts first download and unzip the files to your working directory used by R.
 
 Set the working directory to the appropriate path containing the "household_power_consumption.txt" file. 

 Each R script will create one PNG plot file (480 X 480 pixels) 
