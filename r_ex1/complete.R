complete <- function(directory, ids = 1:332) {
  files = list.files(path=directory, pattern="*.csv", full.names=TRUE)
  result = data.frame(id=integer(), nobs=numeric())
  for (id in ids) {
    data = read.csv(files[id], header=TRUE)
    result = rbind(result, data.frame(id=id, nobs=nrow(na.omit(data))))
  }
  result
}