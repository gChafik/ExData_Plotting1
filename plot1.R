# Upload the data from the file into a variable
household_power_consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
# Read into the same variable the data from 1/2/2007 and 2/2/2007
household_power_consumption <- subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007")
# ?histDraw a plot
hist(household_power_consumption$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red") 
# Add title
title(main = "Global Active Power")
# Copy Plot to png file
dev.copy(png, file = "plot1.png")
# Close device
dev.off()
