library(calandarHeat);

mydata = read.csv("./data-raw/calendarHeatData.csv", header = TRUE)
mydata$date <- as.POSIXct(strptime(mydata$date, format = "%Y/%m/%d",
                                   tz = "GMT"))
#head(mydata)

calendarHeat(dates = mydata$date,values = mydata$pm25,
             color = "g2r",
             varname = "PM2.5日变化")



calendarHeat(dates = mydata$date,values = mydata$pm10,
             color = "g2r",
             varname = "PM10日变化")

