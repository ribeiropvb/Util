path_one <- stringr::str_split(rstudioapi::getActiveDocumentContext()$path, '/', simplify = TRUE)
setwd(paste0(path_one[-length(path_one)], collapse = '/'))