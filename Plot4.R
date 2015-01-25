library(ggplot2)
source("ReadFiles.R")
plot4 <- function (){
  SCCCoal <- SCC[grep("Coal", SCC$EI.Sector),]
  merged <- merge(NEI, SCCCoal, by="SCC")
  res <- aggregate(merged$Emissions, by=list(year= merged$year), FUN=sum)
  print(qplot(year, x,data=res, geom="line"))
}

readFiles(F)
PlotInPng(plot4, "plot_4.png")

