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
    
    # add column of type POSIXct which contains both date and time
    filtered$datetime <- apply(
        filtered, 1,        # for each row of the dataset
        function(row)           # use that row
            as.POSIXct(             # to get the number of seconds since UNIX
                strptime(               # from the given date and time fields
                    paste(row[1], row[2]),  # which are located in columns 1 & 2
                    format='%d/%m/%Y %H:%M:%S'))) # and are formatted like so
    

    
    # construct line graph
    plot(filtered$datetime,
         filtered$Global_active_power,
         type = 'l',
         main = 'Global Active Power',
         ylab = 'Global Active Power (kilowatts)')
    #lines(filtered$datetime,
     #     filtered$Global_active_power, type = 'l')
    
    
    # TODO code that creates the PNG file, otw it looks done
}
