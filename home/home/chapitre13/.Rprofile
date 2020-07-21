setHook("rstudio.sessionInit", function(newSession) {
  # for ( i in 1:100){
  # .rs.api.documentClose()
  # }
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



file.copy(from ="/home/icarius/chapitre13/chapitre13.Rmd" ,to = "/home/icarius/.chapitre13_soluce_backup.Rmd")

.reboot_chap13 <- function(...){
  unlink("/home/icarius/chapitre13/chapitre13.Rmd",force = TRUE)
  file.copy(from ="/home/icarius/.chapitre13_soluce_backup.Rmd" ,to = "/home/icarius/chapitre13/chapitre13.Rmd")
  file.edit("/home/icarius/chapitre13/chapitre13.Rmd")
}


# library(rstudioapi)
# for ( i in 1:100){
# .rs.api.documentClose()
# }
# #
# rstudioapi::navigateToFile(file = "plop.Rmd")
# message("on attend")
# Sys.sleep()
# message("ok")
# xaringan::infinite_moon_reader()
# message("yo")
#
#
# #
# # invisible(addTaskCallback(function(...) {
# #   cat(format(Sys.time()), "task callback executing!\n")
# #   cat("tools:rstudio in search():", "tools:rstudio" %in% search(), "\n")
# #   cat("rstudioapi::isAvailable():", rstudioapi::isAvailable(), "\n")
# #   return(FALSE)
# # }))
#
#
# # https://github.com/rstudio/rstudio/issues/1579
