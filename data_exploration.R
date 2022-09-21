library(data.table)
library(tidyverse)

weather = fread("splits_weather.csv")
glimpse(weather)

weather %>% group_by(ParkId, parkname) %>%
  summarize(mean(temp), mean(humidity), mean(pressure))
