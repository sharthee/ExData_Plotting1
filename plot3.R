source("generatePlot.R") #Contains the code for generating plot and save it as png file

#invoke generatePlot function and pass the hist ploting function
generatePlot("plot3", function(data) {
  plot(data$DateTime, data$Sub_metering_1,
       type = "l",
       ylab = "Energy sub metering",
       xlab = ""
  )
  
  points(data$DateTime, data$Sub_metering_2, type = "l", col = "red")
  points(data$DateTime, data$Sub_metering_3, type = "l", col = "blue")
  
  legend(x = "topright",
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         col = c("black", "red", "blue"),
         lty = 1
  )
})