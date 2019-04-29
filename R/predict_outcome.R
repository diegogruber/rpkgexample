#' A function that predicts something
#'
#' @param x Uniformity Cell Size
#'
#' @return Outcome of tumor prediction (malignant/benign)
#' @export
#' @import OneR
#'
predict_outcome <- function(x) {
  model <-
    readRDS(system.file("mymodel.rds", package = "myapi"))
  df <-
    data.frame(v1 = x)
  df <-
    setNames(df, "Uniformity of Cell Size")
  out <-
    predict(model, newdata = df)
  as.character(out)
}
