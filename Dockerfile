FROM ubuntu:16.04

#Installation of dependencies
RUN apt-get update && apt-get install -y \
wget \
python \
glibc-source \
gcc \
g++ \
make \
zlib1g-dev \
bzip2

WORKDIR /opt

#Strealka - Download and install
RUN wget https://github.com/Illumina/strelka/releases/download/v2.9.2/strelka-2.9.2.centos6_x86_64.tar.bz2 && \
tar xvjf /opt/strelka-2.9.2.centos6_x86_64.tar.bz2 && \
rm -rf /opt/strelka-2.9.2.centos6_x86_64.tar.bz2
 
#Manta - Downaload and install
RUN wget https://github.com/Illumina/manta/releases/download/v1.5.0/manta-1.5.0.centos6_x86_64.tar.bz2 && \
tar -xjf /opt/manta-1.5.0.centos6_x86_64.tar.bz2 && \
rm -rf /opt/manta-1.5.0.centos6_x86_64.tar.bz2

CMD ["/bin/bash"]
