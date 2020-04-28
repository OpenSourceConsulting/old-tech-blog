#!/bin/bash

#########################################################
# For debugging in the Local machine.
# 
# This should run in the environment that can run docker
#########################################################

#docker run --rm -it --name blog --volume="$PWD:/srv/jekyll" -p 4000:4000 jekyll/jekyll /bin/bash -c "gem install concurrent-ruby -v '1.1.3' && gem install minitest -v '5.11.3' --source 'https://rubygems.org/' && jekyll serve"
#docker run --rm -it --name blog --volume="$PWD:/srv/jekyll" -p 4000:4000 jekyll/jekyll jekyll serve
docker run --rm -it --name blog --volume="$PWD:/srv/jekyll" -p 4000:4000 jekyll/jekyll /bin/bash -c "bundler update && jekyll serve"
