pollutantmean <- function(directory, pollutant, id = 1:332) {
  files = list.files(path=directory, pattern="*.csv", full.names=TRUE)
  loadvalues <- function(file) {
    data = read.csv(file, header=TRUE)
    data[,pollutant]
  }
  values = lapply(files[id], loadvalues)
  mean(Reduce(c, values), na.rm=TRUE)
}