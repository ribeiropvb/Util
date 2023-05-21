get_arima_model_name <- function(arima_obj) {
  p <- arima_obj$arma[1]
  d <- arima_obj$arma[6]
  q <- arima_obj$arma[2]
  P <- arima_obj$arma[3]
  D <- arima_obj$arma[7]
  Q <- arima_obj$arma[4]
  if (is.null(p) || is.null(q)) {
    model_name <- "ARIMA(0,0,0)"
  } else {
    model_name <- paste0("ARIMA(", p, ",", d, ",", q, ")")
  }
  if (!is.null(P) && !is.null(Q)) {
    model_name <- paste0(model_name, "(", P, ",", D, ",", Q, ")")
  }
  return(model_name)
}