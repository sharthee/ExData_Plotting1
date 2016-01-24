source("generatePlot.R") #Contains the code for generating plot and save it as png file

#invoke generatePlot function and pass the hist ploting function
generatePlot("plot1", function(data) {
  hist(data$Global_active_power,
       main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)",
       col = "red"
  )
})