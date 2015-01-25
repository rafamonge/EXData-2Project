library(ggplot2)
source("ReadFiles.R")
plot5 <- function (){
  SCCCoal <- SCC[grep("Mobile", SCC$EI.Sector),]
  merged <- merge( NEI[NEI$fips == "24510",], SCCCoal, by="SCC")
  res <- aggregate(merged$Emissions, by=list(year= merged$year), FUN=sum)
  print(qplot(year, x,data=res, geom="line"))
}

readFiles(F)
PlotInPng(plot5, "plot_5.png")

