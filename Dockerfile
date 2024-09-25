FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime

RUN conda init bash

# Setup CUDA environment
COPY ./environment_cuda11.yaml /tmp/environment_cuda11.yaml
RUN conda env create -f /tmp/environment_cuda11.yaml
RUN rm /tmp/environment_cuda11.yaml

# Install wget, unzip, and p7zip
RUN apt-get update
RUN apt-get install wget unzip p7zip-full -y
