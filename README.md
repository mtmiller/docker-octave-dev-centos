Docker for Octave Development - CentOS
======================================

Docker container for Octave development based on CentOS with EPEL.

Use this container to get a ready-to-use command-line environment
suitable for building Octave on CentOS.

Build the container yourself, for example

```
docker build -t my-octave-dev .
```

or

```
git checkout centos6
docker build -t my-octave-dev:centos6 .
```

Or build a few versions at once

```
git checkout centos6
git checkout centos7
./autobuild.sh
```

This container is also available on the Docker Hub:

```
docker pull mtmiller/octave-dev-centos
docker run -it -v /path/to/src/octave:/octave mtmiller/octave-dev-centos
```
