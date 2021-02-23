#!/usr/bin/env bash

# run this in asciinema with:
# asciinema rec -t "asdf-gcloud usage" -c "bash -x example/gif-recording.bash" example-usage.cast --overwrite

# plugin install
asdf plugin list
asdf plugin add gcloud https://github.com/jthegedus/asdf-gcloud.git

# initial install
asdf install gcloud 283.0.0
asdf list gcloud
asdf global gcloud 283.0.0
cat ~/.tool-versions

# exmaple of specific version not installed
{ sleep 3; } 2>/dev/null
cd example
cat .tool-versions
gcloud --version

# install specific version
{ sleep 3; } 2>/dev/null
asdf install gcloud 270.0.0
asdf list gcloud
gcloud --version

# show global version outside of dir
{ sleep 3; } 2>/dev/null
cd ..
gcloud --version
