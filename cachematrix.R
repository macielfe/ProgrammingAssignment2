## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  MatI <- NULL
  set <- function(y) {
    x <<- y
    MatI <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) MatI <<- inverse
  getinverse <- function() MatI
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  MatI <- x$getinverse()
  if(!is.null(MatI)) {
    message("getting cached data")
    return(MatI)
  }
  data <- x$get()
  MatI <- solve(data, ...)
  x$setinverse(MatI)
  MatI
}
