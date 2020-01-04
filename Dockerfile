FROM ubuntu:18.04
RUN apt-get update && apt-get install -y pandoc pandoc-citeproc \
pandoc-data
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y gcc g++ make