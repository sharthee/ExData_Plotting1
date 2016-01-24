source("readHPCData.R") #source for reading the data

#Constants
size <- 480
bg <- "white"

#Generic function to create plot and save as png file
generatePlot <- function(name, fn.generator) {
  filename <- paste(name, ".png", sep = "")
  
  # Setup the PNG graphics device.
  png(filename, width = size, height = size, bg = bg)
  
  # Call the generator function that defines the plot.
  fn.generator(readHPCData())
  
  # Save the PNG.
  dev.off()
}