FROM rocker/rstudio:4.0.0
RUN R -e 'install.packages("rstudioapi")'
RUN R -e 'install.packages("xaringan")'
RUN R -e 'install.packages("stringr")'
RUN R -e 'install.packages("remotes")'
RUN apt-get update && apt-get install -y  libcurl4-openssl-dev libssl-dev libxml2-dev make pandoc pandoc-citeproc zlib1g-dev
RUN R -e 'install.packages("dplyr")'
RUN R -e 'install.packages("rio")'
RUN R -e 'install.packages("skimr")'
RUN R -e 'install.packages("ggformula")'
RUN R -e 'install.packages("readODS")'
RUN R -e 'install.packages("tidyverse")'
COPY rebootchap13_*.tar.gz /app.tar.gz
RUN R -e 'remotes::install_local("/app.tar.gz",upgrade="never")'
RUN mkdir /home/icarius/
COPY ./home/* /home/icarius/
EXPOSE 8787

