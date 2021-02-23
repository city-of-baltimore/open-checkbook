library(tidyverse)
library(lubridate)


load_raw_gp_data <- function(){
  
  df <- read.table(
    "data/raw/OCFY2020.txt", 
    sep = "\t", 
    nrows = 1000, 
    fill = T)
  
}


