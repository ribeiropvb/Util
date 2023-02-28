install.packages("keras")
install.packages("tensorflow")

library(keras)
library(reticulate)
library(tensorflow)

path_to_python <- install_python()
virtualenv_create("r-reticulate", python = path_to_python)

install_tensorflow(envname = "r-reticulate")
install_keras(envname = "r-reticulate")

library(tensorflow)
tf$constant("Hello Tensorflow!")

install_keras()
