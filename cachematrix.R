## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 invx <- NULL
 set <- function(y) {
  x <<- y
  invx <<- NULL
  }
 get <- function() x
 setinverse<- function(inverse) invx <<-inverse
 getinverse <- function() invx
 list(set = set, get = get,
 setinverse = setinverse,
 getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invx <- x$getinverse()
        if (!is.null(invx)) {
        message("getting cached inverse matrix data")
        return(invx)
        } else {
        invx <- solve(x$get())
        x$setinverse(invx)
        return(invx)
        }
}
