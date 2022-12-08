is_between <- function(x, LI, LS){
  r <- as.numeric(between(x, LI, LS))
  return(r)
}