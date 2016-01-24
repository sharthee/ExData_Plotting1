source("downloadHPCData.R") #source for downloading and unzipping the data
library(sqldf)

readHPCData <- function(){
  data.path = "./data/household_power_consumption.txt"
  
  # Download and save data
  downloadHPCData()
  
  # Read the data.
  hpcData <- read.csv.sql(data.path,
                    sql = "select * from file where Date in ('1/2/2007', '2/2/2007')",
                    header = TRUE, sep = ";")
  
  # Clean the data.
  hpcData$Date <- as.Date(hpcData$Date, format = "%d/%m/%Y")
  hpcData$DateTime <- strptime(paste(hpcData$Date, hpcData$Time), format = "%Y-%m-%d %H:%M:%S")

  #return the data
  hpcData
}

