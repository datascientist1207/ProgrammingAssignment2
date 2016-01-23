## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I much preferred lsat week's assignment which had clear expectations.
## This one, IMO, is too loose.  

makeCacheMatrix <- function(x = matrix()) {

	myMatrix<<-matrix(c(1,0,0,1),2,2)
	myMatrixInverse <<- solve(myMatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

	if (!is.null(x) ) { 
		if ( identical(myMatrix,x)) { return(myMatrixInverse )}
		else { return(solve(x)) }
	}
	else {
		return(solve(x))
	}
	
        ## Return a matrix that is the inverse of 'x'
}
