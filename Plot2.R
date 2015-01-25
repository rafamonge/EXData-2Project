source("ReadFiles.R")
plot2 <- function (){
  baltimore <- NEI[NEI$fips == "24510",]
  s <- split(baltimore,  baltimore$year)
  res <-  sapply(s, function(x) sum(x$Emissions))
  barplot( res,xlab="year", ylab="emissions",main="Baltimore")
}

readFiles(F)
PlotInPng(plot2, "plot_2.png")

