FROM rocker/rstudio:4.0.0
RUN R -e 'install.packages("rstudioapi")'
RUN R -e 'install.packages("xaringan")'
RUN mkdir /home/icarius/
COPY ./home/* /home/icarius/
EXPOSE 8787

