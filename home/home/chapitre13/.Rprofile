# Use a backup file so as to reboot with clean Rmarkdown if necessary
file.copy(from ="chapitre13_backup.Rmd",to = "chapitre13.Rmd")

setHook("rstudio.sessionInit", function(newSession) {
  # cat(1)
  rstudioapi::navigateToFile(file = "chapitre13.Rmd")
  # cat(2)
  Sys.sleep(1)
  # cat(3)
  cat("lancement xaringan")
  xaringan::infinite_moon_reader(moon = "chapitre13.Rmd",output_format = rmarkdown::output_format(pre_knit = function(...){
    library(tidyverse)
  },
  knitr = rmarkdown::knitr_options(
    opts_chunk = list(error = TRUE)
  ),
  pandoc = list(),
  base_format = rmarkdown::html_document()
  ))
  rstudioapi::navigateToFile(file = "chapitre13.Rmd")
  cat("done")
}, action = "append")

# Reboot plugin
.reboot_chap13 <- function(...){
  unlink("/home/icarius/chapitre13/chapitre13.Rmd",force = TRUE)
  file.copy(from ="/home/icarius/chapitre13/chapitre13_backup.Rmd",to = "/home/icarius/chapitre13/chapitre13.Rmd")
  file.edit("/home/icarius/chapitre13/chapitre13.Rmd")
}

