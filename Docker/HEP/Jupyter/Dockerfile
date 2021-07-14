FROM jupyter/datascience-notebook:latest

USER root

RUN apt-get update && apt-get install -y --no-install-recommends openjdk-8-jre

# RUN conda install -c jetbrains kotlin-jupyter-kernel
RUN conda install -c jetbrains-dev kotlin-jupyter-kernel

# Install requiered dependencies

# To run as unpriviledged
USER $NB_UID

ENV JUPYTER_ENABLE_LAB=yes

#docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes lobis/jupyter
