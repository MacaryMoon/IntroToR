#Lists and Matrices
#Lists: A list is a list of 'things'. These can have a mixture of data types

list_example <- list(1, "a", TRUE, "Hello", 12.34, -12.45)
list_example

second_list <- list(title= "Numbers", numbers = 1:10, data = TRUE)
second_list

#what 'type' is a list?
typeof(second_list)
typeof(second_list$title)
typeof(second_list$data)

print(second_list$numbers)

print(second_list$numbers[3])

#Matrices
#A zero filled matrix - 6 columns and 3 rows
matrix_example <- matrix (0,ncol=6,nrow=3)
matrix_example

class(matrix_example)
typeof(matrix_example)

#str = structure
str(matrix_example)

dim(matrix_example)
nrow(matrix_example)
ncol(matrix_example)

#chanllenge 4
#length = total number of elements in the matrice   row*column
length(matrix_example)
# In R, a matrix is a vector with additional dimensions, it fills by column

matrix_02 <- matrix(1:50, ncol=5, nrow=10)
matrix_03 <- matrix(1:50, nrow=10, ncol=5)

# to fill by row
matrix_04 <- matrix(1:50, ncol=5, nrow=10,byrow = TRUE) 
matrix_04

