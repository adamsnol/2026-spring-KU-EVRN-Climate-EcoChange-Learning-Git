# an R script to use dplyr and ggplot to visualize
# the keeling curve of Co2 concentrations

# Nolan Adams
# nolan.adams132@gmail.com
# Feb 25th, 2026

# first step is load the packages we want to use
library("dplyr")
library("ggplot2")

#load in the csv data
mlo_data <- read.csv("data/monthly_in_situ_co2_mlo_cleaned.csv")

#use a dplyr pipe and filter function to get rid of -99 value
mlo_data %>%
  filter(CO2 > 0) %>%
  filter(Yr > 1990) %>%
  ggplot(aes(x = Date.1,
             y = CO2)) +
  geom_line( )

ggsave("output/ggplot_kneeling.png")
