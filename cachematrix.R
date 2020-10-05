## Put comments here that give an overall description of what your
## functions do

## this function produces a matrix object that can cache its inverse
## we assume that the matrix is always inverse-able!

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}


## this function computes the inverse of the matrix returned from makeCacheMatrix
## if the inverse has already been calculated, then cacheSolve will retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
  return(inv)
}
  data <- x$get()
  inv <- solve(data, ...)
  
    x$setinverse(inv)
  inv
}
  }
