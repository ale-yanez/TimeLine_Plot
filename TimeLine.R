library(ggplot2)

yr <- c(1987:2019)
#y_axis <- c('Desembarque', 'CPUE', 'Cruceros')

LAmNorte <- ggplot(NULL) + 
  annotate("rect", xmin=1985, xmax=2019, ymin=14, ymax=15, alpha=.8, fill="red2") + #desembarque
  
  annotate("rect", xmin=1987, xmax=1991, ymin=12, ymax=13, alpha=.8, fill="dodgerblue2") + # cpue bloq 1
  annotate("rect", xmin=1993, xmax=2009, ymin=12, ymax=13, alpha=.8, fill="dodgerblue2") + # cpue bloq 2
  #annotate("rect", xmin=2012, xmax=2013, ymin=12, ymax=13, alpha=.8, fill="dodgerblue2") + # cpue bloq 3
  annotate("segment", x=2012, xend=2012, y=12, yend=13, colour="dodgerblue2") +            # cpue bloq 4
  annotate("rect", xmin=2015, xmax=2019, ymin=12, ymax=13, alpha=.8, fill="dodgerblue2") + # cpue bloq 4
  
  #annotate("rect", xmin=1997, xmax=1998, ymin=10, ymax=11, alpha=.8, fill="green") + # crucero bloq 1
  annotate("segment", x=1997, xend=1997, y=10, yend=11, colour="green4") +            # crucero bloq 1
  annotate("rect", xmin=1999, xmax=2009, ymin=10, ymax=11, alpha=.8, fill="green4") + # crucero bloq 2
  annotate("rect", xmin=2011, xmax=2019, ymin=10, ymax=11, alpha=.8, fill="green4") +  # crucero bloq 3
  
  annotate("rect", xmin=1993, xmax=2019, ymin=8, ymax=9, alpha=.8, fill="darkorchid2") + # prop hembras
  
  annotate("rect", xmin=1985, xmax=1986, ymin=6, ymax=7, alpha=.8, fill="coral1") +  # ET Flota
  annotate("rect", xmin=1993, xmax=2012, ymin=6, ymax=7, alpha=.8, fill="coral1") + # ET Flota
  annotate("rect", xmin=2014, xmax=2019, ymin=6, ymax=7, alpha=.8, fill="coral1") +# ET Flota
  
  #annotate("rect", xmin=1999, xmax=2000, ymin=4, ymax=5, alpha=.8, fill="grey") +  # ET Crucero
  annotate("segment", x=1999, xend=1999, y=4, yend=5, colour="gold2") +          # ET Crucero
  annotate("rect", xmin=2001, xmax=2009, ymin=4, ymax=5, alpha=.8, fill="gold2") +  # ET Crucero
  annotate("rect", xmin=2011, xmax=2019, ymin=4, ymax=5, alpha=.8, fill="gold2") +  # ET Crucero
  
  annotate("rect", xmin=2011, xmax=2011, ymin=0, ymax=18, alpha=.8, fill="grey")  + # Espacio
  theme_bw() + theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()) +
  xlab('Años') 


LAmNorte




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
