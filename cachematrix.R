## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
          M <- NULL
          #set the value of the Matrix
          set <- function(y){
                x <<- y
                M <<- NULL
          }
          #get the value of the Matrix
          get <- function() x
          setsolve <- function(solve) M <<- solve
          getsolve <- function() M
          list(set = set, get = get,
               setsolve = setsolve,
               getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         M <- x$getsolve()
         if(!is.null(M)){
                 message("getting cached data")
                 return(M)
         }
         #calculate the mean of the data and
         #sets the value of the mean in the cache via setsolve function
         data <- x$get()
         M <- solve(data, ...)
         x$setsolve(M)
         M
        ## Return a matrix that is the inverse of 'x'
}
