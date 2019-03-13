# Base image https://hub.docker.com/u/rocker/ (R 3.5.1)
FROM rocker/rstudio

# Base image https://github.com/rocker-org/rocker/blob/master/rstudio/3.3.2/Dockerfile (R 3.3.2)
# FROM rocker/rstudio-stable:3.3.2

# Base image https://hub.docker.com/u/rocker/ (R 3.3.2)
# FROM rocker/rstudio:3.3.2

## Copy requirements.R to container directory /tmp
COPY ./DockerConfig/requirements.R /tmp/requirements.R

## Install required libs on container
RUN Rscript /tmp/requirements.R

# Create an R user
ENV USER user

# Expose port to the outside world 
EXPOSE 8787

## Copy your working files over (if you do not mount the bind volume latter)
## The $USER defaults to `rstudio` but you can change this at runtime
# COPY ./Analysis /home/$USER/Analysis
# COPY ./Data /home/$USER/Data



