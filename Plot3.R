library(ggplot2)
source("ReadFiles.R")
plot3 <- function (){
  baltimore <- NEI[NEI$fips == "24510",]
  res <- aggregate(baltimore$Emissions, by=list(year= baltimore$year, type=baltimore$type), FUN=sum)
  print(qplot(year, x,data=res, color=type, geom="line"))
}

readFiles(F)
PlotInPng(plot3, "plot_3.png")

