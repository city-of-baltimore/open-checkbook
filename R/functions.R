library(tidyverse)
library(lubridate)
library(readxl)

load_raw_ledger_flat_file <- function(){
  # load raw ledger export from city dynamics gp
  # temporary while data pipeline built out
  
  start_time <- Sys.time()
  message(paste(start_time, "Starting data load"))

  col_types <- c(
    rep("text", 3),
    "date",
    "date",
    rep("text", 4),
    "numeric",
    "numeric",
    rep("text", 6),
    "numeric",
    "numeric",
    "numeric",
    "text",
    "text",
    "numeric"
  )
  
  df <- read_excel(
    "data/raw/OpenCheck FY2020.xlsx",
    col_types = col_types
  )
  
  end_time <- Sys.time()
  message(paste(end_time, "Data load complete"))
  message(paste("Time to complete: ", end_time - start_time))
  
  df
}


