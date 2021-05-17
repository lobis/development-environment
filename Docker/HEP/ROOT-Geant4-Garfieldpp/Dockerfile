FROM ubuntu:latest

LABEL maintainer.name="Luis Obis"
LABEL maintainer.email="luis.antonio.obis@gmail.com"

ENV APPS_DIR=/opt

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y build-essential git wget curl apt-utils software-properties-common dpkg-dev cmake binutils openssl libssl-dev \
    libexpat-dev libxerces-c-dev libmpc-dev gfortran qt5-default libxmu-dev libxpm-dev libxft-dev libxext-dev python3-dev libtbb-dev libspdlog-dev && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/archives/* && \
    rm -rf /var/lib/apt/lists/*

ARG CXX_STANDARD=14
RUN echo $CXX_STANDARD

# ROOT
ARG ROOT_VERSION=v6-25-01
RUN echo $ROOT_VERSION
ENV ROOT_DIR=$APPS_DIR/root

ENV ROOTSYS=$ROOT_DIR/install

RUN git clone https://github.com/root-project/root.git --branch=${ROOT_VERSION} --depth 1 $ROOT_DIR/source && \
    mkdir -p $ROOT_DIR/build &&  cd $ROOT_DIR/build && \
    cmake $ROOT_DIR/source -DCMAKE_INSTALL_PREFIX=$ROOTSYS -DGDML=ON -DCMAKE_CXX_STANDARD=$CXX_STANDARD && \
    make -j$(nproc) install && \
    rm -rf $ROOT_DIR/build $ROOT_DIR/source && \
    echo "source $ROOTSYS/bin/thisroot.sh" >> ~/.bashrc

ENV PATH $ROOTSYS/bin:$PATH
ENV PYTHONPATH $ROOTSYS/lib:$PYTHONPATH
ENV CLING_STANDARD_PCH none

# GEANT4
ARG GEANT4_VERSION=v10.7.1
RUN echo $GEANT4_VERSION
ENV GEANT4_DIR=$APPS_DIR/geant4

RUN git clone https://github.com/Geant4/geant4.git --branch=${GEANT4_VERSION} --depth 1 $GEANT4_DIR/source && \
    mkdir -p $GEANT4_DIR/build &&  cd $GEANT4_DIR/build && \
    cmake ../source/ -DCMAKE_INSTALL_PREFIX=$GEANT4_DIR/install -DGEANT4_BUILD_CXXSTD=$CXX_STANDARD \
    -DGEANT4_BUILD_MULTITHREADED=ON -DGEANT4_USE_QT=ON -DGEANT4_USE_OPENGL_X11=ON -DGEANT4_USE_RAYTRACER_X11=ON \
    -DGEANT4_INSTALL_DATA=ON -DGEANT4_USE_GDML=ON && \
    make -j$(nproc) install && \
    rm -rf $GEANT4_DIR/build $GEANT4_DIR/source && \
    echo "source $GEANT4_DIR/install/bin/geant4.sh" >> ~/.bashrc

ENV PATH $GEANT4_DIR/install/bin:$PATH

# GARFIELDPP
ARG GARFIELDPP_VERSION=3.0
ENV GARFIELDPP_DIR=$APPS_DIR/garfieldpp

RUN git clone https://gitlab.cern.ch/garfield/garfieldpp.git --branch=${GARFIELDPP_VERSION} --depth 1 $GARFIELDPP_DIR/source && \
    mkdir -p $GARFIELDPP_DIR/build &&  cd $GARFIELDPP_DIR/build && \
    cmake ../source/ -DCMAKE_INSTALL_PREFIX=$GARFIELDPP_DIR/install \
    -DWITH_EXAMPLES=OFF -DCMAKE_CXX_STANDARD=$CXX_STANDARD && \
    make -j$(nproc) install && \
    rm -rf $GARFIELDPP_DIR/build $GARFIELDPP_DIR/source && \
    echo "export GARFIELD_HOME=$GARFIELDPP_DIR/install" >> ~/.bashrc

WORKDIR /

CMD ["/bin/bash"]
