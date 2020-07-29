FROM rocker/rstudio:4.0.0
RUN R -e 'install.packages("rstudioapi")'
RUN R -e 'install.packages("xaringan")'
RUN R -e 'install.packages("stringr")'
RUN R -e 'install.packages("remotes")'
COPY rebootchap13_*.tar.gz /app.tar.gz
RUN R -e 'remotes::install_local("/app.tar.gz",upgrade="never")'
RUN mkdir /home/icarius/
COPY ./home/* /home/icarius/
EXPOSE 8787

