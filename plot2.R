# plot2.R
# by Kasim Te
#
# Coursera's Exploratory Data Analysis Project 1

# Import our data.
# Please refer to "import_data.R" for code to import the data set.
source("import_data.R")

# Create plot2.
png("plot2.png", width = 480, height = 480)
plot(data$datetime, data$Global_active_power, col = "black", type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()


