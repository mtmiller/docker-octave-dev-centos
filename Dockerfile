FROM centos:centos6
MAINTAINER Mike Miller <mike@mtmxr.com>

# Update and set up the EPEL repository
RUN yum update -y
RUN yum install -y epel-release

# Install build tools needed for building Octave
RUN yum install -y bison flex gcc-c++ gcc-gfortran gnuplot gperf make \
    texinfo texinfo-tex

# And Octave's libraries
RUN yum install -y GraphicsMagick-c++-devel arpack-devel blas-devel \
    fftw-devel fltk-devel fontconfig-devel freetype-devel gl2ps-devel \
    glpk-devel hdf5-devel java-devel lapack-devel libXft-devel \
    libcurl-devel mesa-libGL-devel mesa-libGLU-devel pcre-devel \
    qhull-devel qrupdate-devel qscintilla-devel qt-devel readline-devel \
    suitesparse-devel zlib-devel

CMD bash
