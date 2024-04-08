labels_flowers <- c(
  setosa     = paste0("<img src='", "inst/app/www", "/", "setosa.jpg' width='100'/>"),
  versicolor = paste0("<img src='", "inst/app/www", "/", "versicolor.jpg' width='100'/>"),
  virginica  = paste0("<img src='", "inst/app/www", "/", "virginica.jpg' width='100'/>")
)


utils::globalVariables(c('iris', 'Sepal.Length'))
