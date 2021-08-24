# R Basics Exercise

# two to the power of five
a <- 2^5

# Create a vector called stock.prices with the following data points: 23,27,23,21,34
stock.prices <- c(23, 27, 23, 21, 34)
number.list <- c(102, 67, 23, 22, 1, 59)

# Assign names to the price data points relating to the day of the week, starting with Mon, Tue, Wed, etc...
names(stock.prices) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
names(number.list) <- c('Frog', 'Turtle', 'Bear', 'Raccoon', 'Squirrel', 'Chipmunk')

# What was the average (mean) stock price for the week? (You may need to reference a built-in function)
mean(stock.prices)

# Create a vector called over.23 consisting of logicals that correspond to the days where the stock price was more than $23
stock.prices > 23 # returns a vector of logicals

over.23 <- stock.prices > 23 # assigning vector of logicals (conditional statement) to variable

# Use the over.23 vector to filter out the stock.prices vector and only return the day and prices where the price was over $23
stock.prices[over.23] # using conditional statement to filter stock.prices
stock.prices[stock.prices > 23] # same as above 

# Use a built-in function to find the DAY the price was the highest
max(stock.prices) # only returns highest stock price, not the day

# search through vector and names to see where stock.prices equales the max stock price
max.price <- stock.prices == max(stock.prices) 

stock.prices[max.price]


