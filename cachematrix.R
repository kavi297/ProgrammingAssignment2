## Put comments here that give an overall description of what your
## functions do

## This function is used to create a cache of a matrix.

makeCacheMatrix <- function(x = matrix()) {

  minv<-NULL
  
## this function is used to set the matrix
  set<-function(y){
    x<<-y
    minv<<-y
  }
  
## this function is used to return the matrix  
  get<-function() x  
  
  setinverse <-function(inverse) minv<<-inverse # this function sets the inverse matrix
  getinverse<-function() minv     # this function returns the inverse matrix
  
  list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
  
  
}


## This function is used to create an inverse of a matrix provided
  
cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'

  minv<-x$getinverse()
  
  if (!is.null(minv)) {
    message("getting cached data")
    return(minv)
  }
  
    matrix<-x$get()
    minv<-solve(matrix,...)
    x$setinverse(minv)
    return(minv)
  
  
}
