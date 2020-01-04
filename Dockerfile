FROM ubuntu:18.04
RUN apt-get update && apt-get install -y pandoc pandoc-citeproc \
pandoc-data
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y gcc g++ make
COPY build.sh /
RUN chmod a+x /build.sh
RUN npm install -g gulp
RUN apt-get install -y git
RUN apt-get install -y openssh-client openssh-server
RUN npm install -g @vivliostyle/cli
RUN apt-get install -y gnupg
RUN curl -sL https://dl.google.com/linux/linux_signing_key.pub | \
apt-key add -
RUN wget -q \
https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
apt-get install -y ./google-chrome-stable_current_amd64.deb && \
apt clean && rm ./google-chrome-stable_current_amd64.deb
