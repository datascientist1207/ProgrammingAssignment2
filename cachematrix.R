#The makeCacheMatrix fxn creates a list vector with a matrix and stores the inverse value of the matrix
# if it has already been calculated.  If not it contains a null value in the getInverse fxn.


makeCacheMatrix <- function(x = matrix()) {

makeVector <- function(x = numeric()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}

	get <- function() x
	setInverse <- function(inverse) m <<- inverse
	getInverse <- function() m
	list(set = set, get = get,
		setInverse = setInverse,
		getInverse = getInverse)
														  }

}


# Tis function first looks for the value m which was stored by getInverse in makeCacheMatrix fxn and sees  whether it's 
# null.  If not, pull from cache, if yes calculate inverse and return it. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
      if(!is.null(m)){
		message("Retrieving from cache")
	      	return(m)
        }

	data <- x$get()
	m <- solve(data, ...)
	x$setmatrix(m)
	m
}
