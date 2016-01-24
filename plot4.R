source("generatePlot.R") #Contains the code for generating plot and save it as png file

#a subfunction for plotting one of the four graphs
plot1 <- function(data) {
  plot(data$DateTime, data$Global_active_power,
       type = "l",
       ylab = "Global Active Power",
       xlab = ""
  )
}

#a subfunction for plotting one of the four graphs
plot2 <- function(data) {
  plot(data$DateTime, data$Voltage,
       type = "l",
       ylab = "Voltage",
       xlab = "datetime"
  )
}

#a subfunction for plotting one of the four graphs
plot3 <- function(data) {
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
         lty = 1,
         bty = "n"
  )
}

#a subfunction for plotting one of the four graphs
plot4 <- function(data) {
  plot(data$DateTime, data$Global_reactive_power,
       type = "l",
       ylab = "Global_reactive_power",
       xlab = "datetime"
  )
}

#invoke all the subfunctions to generate final graph
generatePlot("plot4", function(data) {
  # Create a a 2x2 matrix of plots.
  par(mfrow = c(2, 2))
  plot1(data)
  plot2(data)
  plot3(data)
  plot4(data)
})