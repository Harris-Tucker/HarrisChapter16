library(tidyverse)

# Read in the data.  Do some cleaning/verification
Flagstaff_Weather <- read.csv('data-raw/Pulliam_Airport_Weather.csv') %>%
  select(DATE, PRCP, SNOW, TMAX, TMIN) %>%
  mutate(DATE = lubridate::ymd(DATE)) %>%
  mutate(PRCP = as.numeric(PRCP)) %>%
  mutate(SNOW = as.numeric(SNOW)) %>%
  mutate(TMAX = as.numeric(TMAX)) %>%
  mutate(TMAX = as.numeric(TMAX))


# Save the data frame to the data/ directory as MaxTemp.rda
usethis::use_data(Flagstaff_Weather)

