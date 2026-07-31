## To deploy app through RStudio:
## library(rsconnect)
## deployApp('gapanalysis')

# Import packages 
suppressPackageStartupMessages(suppressWarnings(library(tidyverse)))
suppressPackageStartupMessages(suppressWarnings(library(lubridate)))
library(dplyr, warn.conflicts = FALSE)
library(shiny)
library(tidyr, include.only = c("gather"))
library(openxlsx)
library(markdown)
library(jsonlite)

# Function that returns date the files were last modified
update_date <- function(file_info, file_name){
    
    # Create datestamp template
    last_updated <- stamp("last updated 10 October 2023", 
                          orders = "dBY", quiet = TRUE)
    
    # Get datetime for file
    d <- file_info %>% 
         filter(name == file_name) %>% 
         select(client_modified) %>%
         .[[1]] %>%
         ymd_hms()
    
    # Return template applied to file datetime
    return(last_updated(d))
}

development <- FALSE

if (development) {
    
    # Read files locally - FOR USE DURING DEVELOPMENT
    gbif <- read.csv('../gbif.csv', stringsAsFactors = FALSE)
    ggbn <- read.csv('../ggbn.csv', stringsAsFactors = FALSE)
    genbank <- read.csv('../genbank.csv', stringsAsFactors = FALSE)
    
} else if (!development) {
    
    # Read files from Figshare - FOR USE ON LIVE SITE needed for SI Shiny Server
    # Updated URLs
    gbif <- read.csv('https://ndownloader.figshare.com/files/42621247', 
                          stringsAsFactors = FALSE)
    ggbn <- read.csv('https://ndownloader.figshare.com/files/42620371',
                          stringsAsFactors = FALSE)
    genbank <- read.csv('https://ndownloader.figshare.com/files/42621265',
                             stringsAsFactors = FALSE)
}

# Read update dates for files 
##rdrop2 was removed from Cran and not supported, updated to retrieve using Figshare API
##file_info <- drop_dir('shiny')
##gbif_date <- update_date(file_info, "gbif.csv")
##ggbn_date <- update_date(file_info, "ggbn.csv")
##genbank_date <- update_date(file_info, "genbank.csv")

# Read update dates for files from Figshare API

article <- fromJSON(
  "https://api.figshare.com/v2/articles/24279694"
)

last_updated <- stamp(
  "last updated 10 October 2023",
  orders = "dBY",
  quiet = TRUE
)

d <- ymd_hms(article$modified_date)

gbif_date <- last_updated(d)
ggbn_date <- last_updated(d)
genbank_date <- last_updated(d)

# Select appropriate columns for each dataset
gbif <- distinct(gbif)

ggbn <- ggbn[, -1]
ggbn$rank <- tolower(ggbn$rank)

genbank <- genbank[, -1]
genbank$rank <- tolower(genbank$rank)
