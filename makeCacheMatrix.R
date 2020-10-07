## This function creates a special "matrix" object that can cache its inverse

## x is input matrix while xbar is its inverse

makeCacheMatrix <- function(x = matrix()) {
    xbar <- NULL
    setMatrix <- function(y) {
        x <<- y          # You can input another matrix later by just call x$setMatrix()
        xbar <<- NULL    # Clear xbar in parent environment in case it was defined
    }
    getMatrix <- function() x
    setInverse <- function(solveMatrix) xbar <<- solveMatrix # In case you have done matrix inverse
    getInverse <- function() xbar
    list(setMatrix = setMatrix, getMatrix = getMatrix, 
         setInverse = setInverse, getInverse = getInverse)
}


