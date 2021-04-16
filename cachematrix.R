## Put comments here that give an overall description of what your
## functions do
## Assignment on Week 3 Coursera: R Programming

## Write a short comment describing this function
## This functions creates a caches on inverse of the created special matrix

makeCacheMatrix <- function(x = matrix()) {

 m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
}
get <- function()x
setInverse <- function(inverse) m <<- inverse
getInverse <- function() m 
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)}


## Write a short comment describing this function
## The function above is the returned inverse of the special matrix 
## is computed by the one beneath
## CacheSolve retrieves the inverse from the cache, if the inverse is calculated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- solve(mat,...)
  x$setInverse(m)
  m
}
