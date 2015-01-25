## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolved <- function(solve) m <<- solve
  getsolved <- function() m
  list(set = set, get = get,
       setsolved = setsolved,
       getsolved = getsolved)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getsolved()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolved(m)
  m
  ## Return a matrix that is the inverse of 'x'
}

### Test
#test = matrix(c(1,5,2,8),2,2)
#mm = makeCacheMatrix(test);
#cacheSolve(mm)
