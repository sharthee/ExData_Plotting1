library(httr) 

#This function handles the downloading and extracting of household power consumption data
downloadHPCData <- function(){
  #URL for the zip file download
  hpcZipUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

  hpcZipFile <- "./data/household_power_consumption.zip"
  if(!file.exists(hpcZipFile)){
    #download the zip file
    download.file(hpcZipUrl, hpcZipFile, method="curl", mode="wb")
  }

  hpcTextFile <- "./data/household_power_consumption.txt"
  if(!file.exists(hpcTextFile)){
    #extract the zip file
    unzip(hpcZipFile,list = FALSE, overwrite = FALSE,exdir="./data")
  }
}

