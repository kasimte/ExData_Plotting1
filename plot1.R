# plot1.R
# by Kasim Te
#
# Coursera's Exploratory Data Analysis Project 1

# Import our data.
source("import_data.R")

# Create plot1.
png("plot1.png", width = 480, height = 480)
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
