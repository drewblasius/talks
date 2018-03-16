#!/usr/bin/Rscript
library(data.table)
library(magrittr)
library(xgboost)

xgb_model <- readRDS('./xgb_model.rds')

#' @get /model
#'
model <- function(lstat) {
  model_input = data.matrix(as.numeric(lstat)) 
  response = list(
    prediction = predict(xgb_model, model_input)
  )
  return(response)
}
  
