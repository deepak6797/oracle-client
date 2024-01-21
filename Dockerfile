FROM ubuntu:20.04

USER 0

ENV DEBIAN_FRONTEND=noninteractive


RUN apt -y update && apt install -y vim curl procps libaio1 libaio-dev software-properties-common build-essential libc6 && \
    echo 'export LD_LIBRARY_PATH=/opt/fullfile:$LD_LIBRARY_PATH' >> ~/.bashrc && \
    echo 'export PATH=$LD_LIBRARY_PATH:$PATH' >> ~/.bashrc && \
    echo 'export ORACLE_HOME=/opt/fullfile' >> ~/.bashrc && \
    apt autoremove -y

ADD ./fullfile.tar /opt/

ENTRYPOINT ["tail" ]