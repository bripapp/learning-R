######
# CREATING MATRICES
######
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

# assign column names to stock.matrix
days <- c('Mon','Tue','Wed','Thu','Fri')
colnames(stock.matrix) <- days

#assign row names to stock.matrix
stock.names <- c('GOOG','MSFT')
rownames(stock.matrix) <- stock.names

######
# MATRIX ARITHMETIC AND COMPARISONS
######
mat <- matrix(1:50, byrow=TRUE, nrow=5)

# Multiplication
2*mat

# Division (reciprocal)
1/mat

# Division
mat/2

# Power
mat ^ 2

# Boolean (basically yes or no question)
# tell me whether each number in matrix is greater than 17 (STATEMENT EVALUATES AS TRUE)
# or less than 17 (STATEMENT EVALUATES AS FALSE)
mat > 17 # returns true/false
mat [mat>17] # returns vector with original values

# you can also do arithmetic with multiple matrices
mat + mat
mat / mat
mat ^ mat
mat*mat # this is NOT the same as matrix multiplication

# true matrix multiplication in linear algebra (not element by element)
mat %*% mat

######
# MATRIX OPERATIONS 
######

# sum up values in each column
colsSums(stock.matrix)
# sum up values in each row
rowSums(stock.matrix)
# get the mean value of each row
rowMeans(stock.matrix)

FB <- c(111,112,113,120,145)
# use rbind() to create a new row
tech.stocks <- rbind(stock.matrix,FB)

# create avg vector and use cbind() to create a new column
avg <- rowMeans(tech.stocks)
tech.stocks <- cbind(tech.stocks,avg)

######
# MATRIX SELECTION AND INDEXING
# syntax:
# example.matrix[rows,columns]
######


# create a matrix with 50 elements, fill in by row, split into 5 rows
mat <- matrix(1:50, byrow=TRUE, nrow=5)

# grab first row
mat[1,]

# grab first column
mat[,1] # notice comma placement

# grab first 3 rows
mat[1:3,]

# grab top left rectangle of:
# 1,2,3
# 11,12,13
mat[1:2, 1:3]

# grab last two columns
mat[,9:10]

# grab a center square of:
# 15,16
# 25,26
mat[2:3,5:6]

# grab rectangle of:
# 16,17,18,19
# 46,47,48,49
mat[2:5,6:9]
