# Coursera Exploratory Data Analysis Project 1
# Plot 4
# 4 separate linegraphs of various energy monitoring data
# over Thu to Sat, including plots 2 and 3
# "base" plotting system
# 5/5/14
# Ethan Petuchowski

power_consumption <- '/Users/ethan/code/non_apple/data/household_power_consumption.txt'

# initial rough estimate
plot4 <- function (data_loc = power_consumption) {
    data <- read.csv(data_loc)
    line(time, gap, data = data)
}
