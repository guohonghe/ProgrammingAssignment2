## This function computes the inverse of the special "matrix" returned by `makeCacheMatrix`

cacheSolve <- function(x) {
    xbar <- x$getInverse()
    if(!is.null(xbar)) {
        message("It had been done before. Getting cached data directly")
        return(xbar)
    }
    data <- x$getMatrix()
    xbar <- solve(data)
    x$setInverse(xbar)     # send inverse matrix to x$setInverse() so it can be passed around by cache
    xbar
}
