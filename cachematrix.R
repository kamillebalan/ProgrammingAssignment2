## WEEK 3 COURSERA: R PROGRAMMING

## This functions creates a caches on inverse of the created special matrix
## where 'x' serves as the matrix and 'b' serves as the null

makeCacheMatrix <- function(x = matrix()) {

 b <- NULL
  set <- function(y){
    x <<- y
    b <<- NULL
}
get <- function()x
 
## Setting the inverse of the matrix
setInverse <- function(inverse)
 b <<- inverse
 
## Getting the matrix inverse
getInverse <- function() b 

## Lists if the methods
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
 
 
## Matrix multiplication process to calculate the inverse 
  b <- solve(mat,...)
  x$setInverse(b)

## Back to matrix
  b
}
