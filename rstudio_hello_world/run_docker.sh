#!/bin/bash
# This is s simple docker run command, broken up so you can read each bit
# -d flag runs in detatched mode
# use -it to start in interactive mode
# --rm removes the container on exit

#sudo docker run -d --rm \
#    -p 28787:8787 \                         # map ports
#    --name hello-world2 \                   # name container
#    -e USERID=$UID \                        # you need to share a UID so you can write to mount file on host
#    -e PASSWORD=pw2 \                   # set rstudio password - user is rstudio
#    -v $BASE_DIR:/home/rstudio/Data \       # mount base directory (with Data and Analysis subdirectories) to pick up changes or write to host
#       rstudio/hello-world                  # the name of the image

# simple one liner for command line copying
BASE_DIR=${PWD}
sudo docker run -d --rm -p 28787:8787 --name hello-world -e USERID=$UID -e PASSWORD=pwd -v $BASE_DIR:/home/rstudio/ rstudio/hello-world

# this is an example of running the container in interactive mode and logging into a bash shell
# sudo docker run -it --rm  --name hello-world2 -e USERID=$UID -v $BASE_DIR:/home/rstudio/Data rstudio/hello-world  /bin/bash