## Put comments here that give an overall description of what your
## functions do

## This function creates a matrix and stores its inverse.   

makeCacheMatrix <- function(x = matrix()) {
  m <<- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function cacluates the inverse of the aforementioned matrix and returns the inverse. 
## If it has already been calculated, it returns the stored inverse, assuming that the matrix has not changed.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
