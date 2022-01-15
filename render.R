## This R script is executed as a cron job

## Get command line arguments
args <- commandArgs(trailingOnly=TRUE)

## Run report and output document
tryCatch(
  rmarkdown::render(
    input = "report.Rmd", 
    output_file = args[1]),
  error=function(e) {
    print(e)
    quit(status=1) 
  }
)
