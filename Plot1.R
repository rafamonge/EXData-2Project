source("ReadFiles.R")
plot1 <- function (){
  s <- split(NEI,  NEI$year)
  res <-  sapply(s, function(x) sum(x$Emissions))
  barplot( res,xlab="year", ylab="emissions")
}

readFiles(F)
PlotInPng(plot1, "plot_1.png")

