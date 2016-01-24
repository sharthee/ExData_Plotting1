source("generatePlot.R") #Contains the code for generating plot and save it as png file

#invoke generatePlot function and pass the ploting function
generatePlot("plot2", function(data) {
  #draw plot2
  plot(data$DateTime, data$Global_active_power,
       type = "l",
       ylab = "Global Active Power (kilowatts)",
       xlab = ""
  )
})