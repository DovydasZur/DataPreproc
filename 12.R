#9
library(dplyr)
library(tidyr)
#ismeta na reiksmes kur maziau uz 0.5
data=read.csv("datapol.csv")
str(data)
data = data[which(rowMeans(!is.na(data)) > 0.5), ]
#surikiuoja
data %>%
  arrange(year, country, politics)


