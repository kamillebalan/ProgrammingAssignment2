## Assignment on R Programming: Week 3 coursera

## This functions creates a caches on inverse of the created special matrix

makeCacheMatrix <- function(x = matrix()) {

 b <- NULL
  set <- function(y){
    x <<- y
    b <<- NULL
}
get <- function()x
setInverse <- function(inverse) b <<- inverse
getInverse <- function() b 
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)}


## The function above is the returned inverse of the special matrix that is computed by the below function
## If the inverse is calculated the CacheSolve retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
b <- x$getInverse()
  if(!is.null(b)){
    message("getting cached data")
    return(b)
  }
  mat <- x$get()
  b <- solve(mat,...)
  x$setInverse(b)
  b
}
