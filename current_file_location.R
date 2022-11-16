current_file_location <- function(){
  x <- dirname(rstudioapi::getSourceEditorContext()$path)
  return(x)
}