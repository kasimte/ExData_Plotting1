# plot4.R
# by Kasim Te
#
# Coursera's Exploratory Data Analysis Project 1

# Import our data.
# Please refer to "import_data.R" for code to import the data set.
source("import_data.R")

# Create plot4.
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
plot(data$datetime, data$Global_active_power, col = "black", type = "l", xlab = "", ylab = "Global Active Power")
plot(data$datetime, data$Voltage, col = "black", type = "l", xlab = "datetime", ylab = "Voltage")
plot(data$datetime, data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
points(data$datetime, data$Sub_metering_2, col = "red", type = "l")
points(data$datetime, data$Sub_metering_3, col = "blue", type = "l")
legend("topright", bty = "n", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(data$datetime, data$Global_reactive_power, col = "black", type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()


