corr <- function(directory, threshold = 0) {
  files = list.files(path=directory, pattern="*.csv", full.names=TRUE)
  result = numeric()
  for (file in files) {
    data = na.omit(read.csv(file, header=TRUE))
    if (nrow(data) > threshold) {
      result = c(result, cor(data$sulfate, data$nitrate))
    }
  }
  result
}