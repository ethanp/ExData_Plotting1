# Coursera Exploratory Data Analysis Project 1
# Plot 3
# 3 overlaid linegraphs of Energy sub metering (1,2,3) over Thu to Sat
# "base" plotting system
# 5/5/14
# Ethan Petuchowski

power_consumption <- '/Users/ethan/code/non_apple/data/household_power_consumption.txt'

# initial rough estimate
plot3 <- function (data_loc = power_consumption) {
    data <- read.csv(data_loc)
    line(time, gap, data = data)
}
