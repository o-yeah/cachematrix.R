#I made several changes to Dr.Peng's the original source file on Coursera course. 
#This code is for experiment purpose only.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {x <<- y;m <<- NULL;}
  get <- function() x
  setx <- function(solve) m <<- solve
  getx <- function() m
  list(set = set, get = get,setx = setx,getx = getx)#a list of functions is returned
}

cacheSolve <- function(mCAreturn, ...) {
  m <- mCAreturn$getx()
  if(!is.null(m)) {
    message("got cached data.Exit.")
    return(m)
  }
  data <- mCAreturn$get()
  m <- solve(data, ...)
  mCAreturn$setx(m)
  m
}

#cacheSolve(makeCacheMatrix(matrix(c(1,2,3,4),2,2)))
