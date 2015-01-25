res <- matrix()
y<-matrix()
y <- NULL
makeCacheMatrix <- function(x=matrix())
{
 

  if(is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y))
  {
 
    message("returning cache value..")
    
  }
  else
{
 
  res <- solve(x)
  y <-x
  message("saving the value in cache..")
}
res  
}

cachesolve <- function()
{
  a <- matrix(c(2,3,4,1,2,5,6,7,9), nrow = 3,ncol = 3)
  print(makeCacheMatrix(a))
  print(makeCacheMatrix(a))
  b <- matrix(c(2,3,1,5,2,6,6,7,9), nrow = 3,ncol = 3)
print(makeCacheMatrix(b))
}
cachesolve()


