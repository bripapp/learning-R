# quickly create sequential numeric vector
v <- 1:12

# use vector create two dimensional matrix (10 rows by 1 column)
matrix(v)

# specify number of rows using nrow
matrix(v, nrow=2)

# see how byrow argument works
matrix(v, nrow = 4)
matrix(v, byrow = FALSE, nrow = 4)

matrix(v, byrow = TRUE, nrow = 4)

# create matrices from vectors
goog <- c(450,451,452,445,468)
msft <- c(230,231,232,236,228)

# string one vector after another
stocks <- c(goog, msft)

# fill in matrix by row, using 2 rows (one for each stock vector)
stock.matrix <- matrix(stocks, byrow = T, nrow = 2)