FROM jupyter/base-notebook

USER root

RUN apt-get update && \
    apt-get install -y \
    libglib2.0-0 \
    libsm6 \
    libxrender1 \
    libxext6 && \
    pip install opencv-python matplotlib