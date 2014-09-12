#!/bin/sh
#
# Autobuild all branches with docker tags derived from branch names

: ${BASE=centos}
: ${DOCKER=docker}
: ${GIT=git}

# Name of the docker image to be created
name=octave-dev-$BASE

$DOCKER pull $BASE

branches=`$GIT for-each-ref --format='%(refname:short)' refs/heads`
for b in $branches; do
  tag=`echo $b | sed s,master,latest,`
  $GIT checkout $b
  $DOCKER build --tag=$name:$tag .
done
