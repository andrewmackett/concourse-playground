#!/bin/sh

set -e # fail fast
set -x # print commands

#git clone resource-gist updated-gist
#cd updated-gist
#echo $(date) > bumpme
#git config --global user.email "nobody@concourse.ci"
#git config --global user.name "Concourse"
#git add .
#git commit -m "Bumped date"

echo $1
echo $2
echo $3
packer build -var 'aws_access_key=$1' -var 'aws_secret_key=$2' $3
