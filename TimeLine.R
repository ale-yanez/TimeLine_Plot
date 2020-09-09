
#Time Line creada manualmente
library(ggplot2)

yr <- c(1985:2020)

LAmNorte <- ggplot(NULL) + 
  annotate("rect", xmin=1984.5, xmax=2020.5, ymin=14, ymax=15, alpha=.8, fill="red2") + #desembarque
  annotate("text", x=2000, y=14.5, label="Desembarque", colour="white") +
  
  annotate("rect", xmin=1986.5, xmax=1991.5, ymin=12, ymax=13, alpha=.8, fill="dodgerblue2") + # cpue bloq 1
  annotate("rect", xmin=1992.5, xmax=2009.5, ymin=12, ymax=13, alpha=.8, fill="dodgerblue2") + # cpue bloq 2
  annotate("rect", xmin=2011.5, xmax=2012.5, ymin=12, ymax=13, alpha=.8, fill="dodgerblue2") + # cpue bloq 3
  #annotate("segment", x=2012, xend=2012, y=12, yend=13, colour="dodgerblue2") +            # cpue bloq 3
  annotate("rect", xmin=2014.5, xmax=2019.5, ymin=12, ymax=13, alpha=.8, fill="dodgerblue2") + # cpue bloq 4 
  annotate("text", x=2000, y=12.5, label="CPUE", colour="white") +
  
#  annotate("segment", x=1997, xend=1997, y=10, yend=11, colour="green4") +            # crucero bloq 1
  annotate("rect", xmin=1996.5, xmax=1997.5, ymin=10, ymax=11, alpha=.8, fill="green4") + # crucero bloq 1
  annotate("rect", xmin=1998.5, xmax=2009.5, ymin=10, ymax=11, alpha=.8, fill="green4") + # crucero bloq 2
  annotate("rect", xmin=2010.5, xmax=2019.5, ymin=10, ymax=11, alpha=.8, fill="green4") +  # crucero bloq 3
  annotate("text", x=2004, y=10.5, label="Biomasa Crucero", colour="white") +
  
  annotate("rect", xmin=1992.5, xmax=2020.5, ymin=8, ymax=9, alpha=.8, fill="darkorchid2") + # prop hembras
  annotate("rect", xmin=1984.5, xmax=1992.5, ymin=8, ymax=9, alpha=.8, fill="darkorchid4") + # prop hembras
  annotate("text", x=2003, y=8.5, label="Prop Hembras", colour="white") +
  
  annotate("rect", xmin=1984.5, xmax=1986.5, ymin=6, ymax=7, alpha=.8, fill="coral1") +  # ET Flota
  annotate("rect", xmin=1992.5, xmax=2012.5, ymin=6, ymax=7, alpha=.8, fill="coral1") + # ET Flota
  annotate("rect", xmin=2013.5, xmax=2020.5, ymin=6, ymax=7, alpha=.8, fill="coral1") +# ET Flota
  annotate("text", x=2003, y=6.5, label="ET Flota", colour="white") +
  
  #annotate("segment", x=1999, xend=1999, y=4, yend=5, colour="gold2") +          # ET Crucero
  annotate("rect", xmin=1998.5, xmax=1999.5, ymin=4, ymax=5, alpha=.8, fill="gold2") +          # ET Crucero
  annotate("rect", xmin=2000.5, xmax=2009.5, ymin=4, ymax=5, alpha=.8, fill="gold2") +  # ET Crucero
  annotate("rect", xmin=2010.5, xmax=2019.5, ymin=4, ymax=5, alpha=.8, fill="gold2") +  # ET Crucero
  annotate("text", x=2005, y=4.5, label="ET Crucero", colour="white") +
  
  annotate("rect", xmin=2011, xmax=2011, ymin=3, ymax=16, alpha=.8, fill="grey")  + # Espacio
  theme_bw() + theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()) +
  xlab('Años') + scale_x_continuous(breaks = round(seq(min(yr), max(yr), by = 5),1)) +
  theme(axis.text.y=element_blank(), axis.title.y = element_blank(), axis.ticks.y = element_blank())


LAmNorte

dir()
setwd('~/Documents/GitHub/TimeLine_Plot/')
ggsave(LAmNorte, file='Datos_LAmNorte.png', width=9, height=5, dpi=300)


# Grafico subido a GitHub

# Otra forma no explorada del todo

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


vistime(LAmNorte.data, events = "DeviceName", groups = "DeviceManufacturer", 
        start = "start_date", end = "end_date")



# LAmSur

yrSur <- c(1979:2019)

LAmSur <- ggplot(NULL) + 
  annotate("rect", xmin=1978.5, xmax=2019.5, ymin=14, ymax=15, alpha=.8, fill="red2") + #desembarque
  annotate("text", x=2000, y=14.5, label="Desembarque", colour="white") +
  
  annotate("rect", xmin=1981.5, xmax=1983.5, ymin=12, ymax=13, alpha=.8, fill="dodgerblue2") + # cpue bloq 1
  annotate("rect", xmin=1984.5, xmax=2019.5, ymin=12, ymax=13, alpha=.8, fill="dodgerblue2") + # cpue bloq 2
  annotate("text", x=2000, y=12.5, label="CPUE", colour="white") +
  
  #  annotate("segment", x=1997, xend=1997, y=10, yend=11, colour="green4") +            # crucero bloq 1
  annotate("rect", xmin=1994.5, xmax=1995.5, ymin=10, ymax=11, alpha=.8, fill="green4") + # crucero bloq 1
  annotate("rect", xmin=1996.5, xmax=1997.5, ymin=10, ymax=11, alpha=.8, fill="green4") + # crucero bloq 2
  annotate("rect", xmin=1998.5, xmax=2009.5, ymin=10, ymax=11, alpha=.8, fill="green4") +  # crucero bloq 3
  annotate("rect", xmin=2010.5, xmax=2019.5, ymin=10, ymax=11, alpha=.8, fill="green4") +  # crucero bloq 4
  annotate("text", x=2004, y=10.5, label="Biomasa Crucero", colour="white") +
  
  annotate("rect", xmin=1996.5, xmax=2019.5, ymin=8, ymax=9, alpha=.8, fill="darkorchid2") + # prop hembras
  annotate("rect", xmin=1978.5, xmax=1996.5, ymin=8, ymax=9, alpha=.8, fill="darkorchid4") + # prop hembras
  annotate("text", x=2003, y=8.5, label="Prop Hembras", colour="white") +
  
  annotate("rect", xmin=1980.5, xmax=1981.5, ymin=6, ymax=7, alpha=.8, fill="coral1") +  # ET Flota
  annotate("rect", xmin=1985.5, xmax=1986.5, ymin=6, ymax=7, alpha=.8, fill="coral1") + # ET Flota
  annotate("rect", xmin=1993.5, xmax=1999.5, ymin=6, ymax=7, alpha=.8, fill="coral1") +# ET Flota
  annotate("rect", xmin=2002.5, xmax=2019.5, ymin=6, ymax=7, alpha=.8, fill="coral1") +# ET Flota
  annotate("text", x=2006, y=6.5, label="ET Flota", colour="white") +
  
  #annotate("segment", x=1999, xend=1999, y=4, yend=5, colour="gold2") +          # ET Crucero
  annotate("rect", xmin=1998.5, xmax=2009.5, ymin=4, ymax=5, alpha=.8, fill="gold2") +  # ET Crucero
  annotate("rect", xmin=2010.5, xmax=2019.5, ymin=4, ymax=5, alpha=.8, fill="gold2") +  # ET Crucero
  annotate("text", x=2004, y=4.5, label="ET Crucero", colour="white") +
  
  annotate("rect", xmin=2011, xmax=2011, ymin=3, ymax=16, alpha=.8, fill="grey")  + # Espacio
  theme_bw() + theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()) +
  xlab('Años') + scale_x_continuous(breaks = round(seq(min(yrSur), max(yrSur), by = 2),1)) +
  theme(axis.text.y=element_blank(), axis.title.y = element_blank(), axis.ticks.y = element_blank())


LAmSur

dir()
setwd('~/Documents/GitHub/TimeLine_Plot/')
ggsave(LAmSur, file='Datos_LAmSur.png', width=9, height=5, dpi=300)


