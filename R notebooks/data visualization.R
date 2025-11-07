library(tidyverse)
data("BOD")
ggplot(data = BOD,
       mapping=aes(x=Time,
                   y=demand))+
  geom_point(size= 5) +
  geom_line(colour="red")
       
  
'ggplot(BOD,aes(Time,demand))+
  geom_point(size=5)+
  geom_line(colour="blue")
  
  data(C02)
  View(C02)
  
  ggplot(CO2,aes(conc,uptake,colour=Treatment))+
  geom_point(size=4,alpha=0.5)+
  geom_smooth(method=lm,se=F)+
  facet_wrap(~Type)+
  labs(title="Concentration of CO2")+
  theme_bw()
  
  ggplot(CO2,aes(Treatment,uptake))+
  geom_boxplot()+
  geom_point(size = CO2$conc,colour=Plant)
  
  
  
  
  