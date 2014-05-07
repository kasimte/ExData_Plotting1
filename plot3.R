# plot3.R
# by Kasim Te
#
# Coursera's Exploratory Data Analysis Project 1

# Import our data.
source("import_data.R")

# Create plot2.
png("plot3.png", width = 480, height = 480)
plot(data$datetime, data$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
points(data$datetime, data$Sub_metering_2, col = "red", type = "l")
points(data$datetime, data$Sub_metering_3, col = "blue", type = "l")
legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()


