## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates a data structure containing a matrix
## and a cache for the inverse as well as getters
## and setters for the data and the inverse

makeCacheMatrix <- function(x = numeric()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## Write a short comment describing this function
## Toma un cache matrix de una estructura de datos y calcula la matrix inversa
## si no está lista lo almacena en cache. 

cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
