#!/bin/bash

#########################################################
# For debugging in the Local machine.
# 
# This should run in the environment that can run docker
#########################################################

docker run --rm -it --name blog --volume="$PWD:/srv/jekyll" -p 4000:4000 jekyll/jekyll jekyll serve
