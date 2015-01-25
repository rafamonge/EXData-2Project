library(ggplot2)
source("ReadFiles.R")
plot6 <- function (){
  SCCCoal <- SCC[grep("Mobile", SCC$EI.Sector),]
  merged <- merge( NEI[NEI$fips == "24510" | NEI$fips == "06037",], SCCCoal, by="SCC")
  res <- aggregate(merged$Emissions, by=list(year= merged$year, region=merged$fips), FUN=sum)
  res$region <- sapply(res$region, 
                       function(x){
                        if(x=="24510"){
                          "Baltimore City"
                        }
                        else{"Los Angeles County, California"}
                        }
                       )
  print(qplot(year, x,data=res, color=region, geom="line"))
}

readFiles(F)
PlotInPng(plot6, "plot_6.png")