readFiles <- function(x)
{
  if(!exists("NEI", envir=.GlobalEnv))
  {
    NEI <<- readRDS("summarySCC_PM25.rds")
    message("loaded NEI")
  }
  if(!exists("SCC", envir=.GlobalEnv))
  {
    SCC <<- readRDS("Source_Classification_Code.rds")
    message("loaded SCC")
  }
  if(x){
    #create the merged/prepared data source
    #PMData <<- merge(NEI,SCC, by="SCC")
    #message("created PMData")
    
  }
  message("Data load complete")
}

PlotInPng <- function(f, fileName){
  png(filename = fileName)
  f()
  dev.off()
  message(paste("printed to ", fileName))
}

