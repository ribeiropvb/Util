# This code is create in order to generate a formula to be used in
# any type of model. It returns a formula class object

comb_lv1 <- function(data, x_vars_interact, y_var){
  formula <- paste(
    y_var,' ~ ',
    paste0(
      c(
        colnames(data)
        ,combn(
          x_vars_interact
          , 2, FUN=paste, collapse=':'
        )
      )
      , collapse = '+'
    )
  )
  return(as.formula(formula))
}
