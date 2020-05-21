library(vistime)

LAmNorte.data <- data.frame(
  DatosEntrada = c("Desembarques", 
                 "CPUE", 
                 "Ev. Directa Cruceros", 
                 "Xience Prime"),
  
  DeviceManufacturer = c("Cordis Cashel",
                         "Cordis Cashel",
                         "Cordis Cashel", 
                         "Abbott Vascular"),
  
  start_date = as.Date(c("1985-01-01", 
                         "1987-01-01",
                         "1997-01-01", 
                         "2012-04-10")),
  
  end_date = as.Date(c("2019-01-01", 
                       "2019-01-01", 
                       "2019-01-01", 
                       "2016-03-31")),
  
  stringsAsFactors = T
)

#data visualization
vistime(LAmNorte.data, events = "DatosEntrada", groups = "DeviceManufacturer",
        start = "start_date", end = "end_date")

?vistime

timeline(device.data)





vistime(LAmNorte.data, events = "DeviceName", groups = "DeviceManufacturer", 
        start = "start_date", end = "end_date")
