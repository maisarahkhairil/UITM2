## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function create a vector that caches the calculation of its inverse
makeCacheMatrix <- function(x = matrix()) {
inv<-NULL #the inverse start with null

##assign new argument to be my stored value 
##and reset my inverse calculation 
set<- function(y){ 
  x<<-y
  inv<<-NULL
}
##get and set the function of inverse
get<- function() x
setInverse<-function(solve) inv<<-solve
getInverse<-function() inv

list(set=set,get=get,
     setInverse=setInverse,
     getInverse=getInverse)
}


## Write a short comment describing this function

##This function is for calculate the inverse
##if the cache already exist, it will return the cached result
cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
inv<- x$getInverse()
if(!is.null(inv)){
  message("getting cached data")
  return(inv)
}
##calculating inverse
matrix<-x$get()
inv<-solve(matrix,...)
x$setInverse(inv)
inv
}
