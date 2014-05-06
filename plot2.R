# Coursera Exploratory Data Analysis Project 1
# Plot 2
# linegraph of Global Active Power (kilowatts) from Thu to Sat
# "base" plotting system
# 5/5/14
# Ethan Petuchowski

power_consumption <- '/Users/ethan/code/non_apple/data/household_power_consumption.txt'

# initial rough estimate
plot2 <- function (data_loc = power_consumption) {
    data <- read.csv(data_loc)
    line(time, gap, data = data)
}