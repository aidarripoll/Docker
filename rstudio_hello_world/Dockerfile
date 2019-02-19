# Base image https://hub.docker.com/u/rocker/ (R 3.5.1)
FROM rocker/rstudio

# Base image https://github.com/rocker-org/rocker/blob/master/rstudio/3.3.2/Dockerfile (R 3.3.2)
# FROM rocker/rstudio-stable:3.3.2

# Base image https://hub.docker.com/u/rocker/ (R 3.3.2)
# FROM rocker/rstudio:3.3.2

## Install extra R packages using requirements.R
## Specify requirements as R install commands e.g.
## 
## install.packages("<myfavouritepacakge>") or
## devtools::install("SymbolixAU/googleway")

## Copy requirements.R to container directory /tmp
COPY ./DockerConfig/requirements.R /tmp/requirements.R 
## install required libs on container
RUN Rscript /tmp/requirements.R

# create an R user
ENV USER rstudio

# Expose port to the outside world
# EXPOSE 8787

## Copy your working files over
## The $USER defaults to `rstudio` but you can change this at runtime
COPY ./Analysis /home/$USER/Analysis
COPY ./Data /home/$USER/Data





