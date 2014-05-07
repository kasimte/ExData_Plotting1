# import_data.R
# by Kasim Te
#
# Coursera's Exploratory Data Analysis Project 1

# This is the name of the unzipped data source.
# Make sure it is in your working directory.
filename <- "household_power_consumption.txt"

# Read in the data for only dates 1/2/2007 and 2/2/2007.
data <- read.table(filename, header=TRUE, sep = ";", skip=66636, nrows=2880)

# Rename the column names as appropriate.
columns <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage"
             , "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
names(data) <- columns

# Convert the date and time columns to POSIXlt
datetime <- paste(data$Date, data$Time)
datetime <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
data <- cbind (datetime, data)