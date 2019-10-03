## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL  				# mi matrix to store the inverse matrix
	set <- function(y){			# assigns value to the matrix in parent environment
		x <<- y
		inv <<- NULL
	}
	get <- function() x			# returns the matrix
	setinv <- function(inverse) inv<<-invers	# assigns value to the inverse matrix in parent environment
	getinv <- function() inv	    	# retruns the inverse matrix 
	list(set=set,get=get,setinv=setinv,getinv=getinv) 
}


## Calculates the inverse of the matrix and if inverse is already calculated then retrieve from cache 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
    
  }
  data<-x$get()
  inv<-solve(data)
  x$setinv(inv)
  inv
}
