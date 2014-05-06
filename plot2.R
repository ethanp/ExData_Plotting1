# Coursera Exploratory Data Analysis Project 1
# Plot 2
# linegraph of Global Active Power (kilowatts) from Thu to Sat
# "base" plotting system
# 5/5/14
# Ethan Petuchowski

power_consumption <- '/Users/ethan/code/non_apple/data/household_power_consumption.txt'

plot2 <- function (data_loc = power_consumption) {
    
    # Read raw data
    data <- read.csv(data_loc, 
                     sep = ';', 
                     na.strings = c('?'),  # save '?' in raw data as 'NA' value
                     colClasses = c(rep('character', 2), rep('numeric', 7)),
                     comment.char = '', 
                     nrows = 69518)        # only read data we need
    
    # only plot date range we care about
    filtered <- subset(data, Date == '1/2/2007' | Date == '2/2/2007')
    
    # add column of Date datatype which contains both
    # the correct date and time of each datapoint
    filtered$datetime <- apply(filtered, 1, function(row)
        strptime(paste(row[1], row[2]), format='%d/%m/%Y %H:%M:%S'))
    

    
    # construct histogram
    plot <- plot(filtered$datetime, filtered$Global_active_power,
                 col  = 'red',
                 main = 'Global Active Power',
                 xlab = 'Global Active Power (kilowatts)')
    
    # TODO code that creates the PNG file, otw it looks done
}
