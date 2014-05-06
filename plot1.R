# Coursera Exploratory Data Analysis Project 1
# Plot 1
# red histogram of (Global Active Power (kilowatts), Frequency)
# "base" plotting system
# 5/5/14
# Ethan Petuchowski

power_consumption <- '/Users/ethan/code/non_apple/data/household_power_consumption.txt'

plot1 <- function (data_loc = power_consumption) {
                                                  
    # set column classes for faster reading
    cl <- c(rep('character', 2), rep('numeric', 7))
    
    # nrows: only read up through the data we actually need
    #        this speeds everything up tremendously
    # na.strings: I checked and this is working properly
    data <- read.csv(data_loc, sep=';', na.strings = c('?'), 
                   colClasses = cl, comment.char = '', nrows = 69518)
    
    # add column of Date datatype which contains both
    # the correct date and time of each datapoint
#    data$datetime <- apply(data, 1, function(row)
#        strptime(paste(row[1], row[2]), format='%d/%m/%Y %H:%M:%S'))
    
    plot <- hist(data$Global_active_power, col = 'red',
         main = 'Global Active Power',
         xlab = 'Global Active Power (kilowatts)')

    # TODO code that creates the PNG file, otw it looks done
}