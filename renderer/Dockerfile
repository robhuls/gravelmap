FROM ubuntu:xenial
# Update repo
RUN apt-get update && apt-get upgrade -y
# Install ubuntu parts we need further on
RUN apt-get install -y curl sudo git software-properties-common wget unzip fontconfig
# Install npm: https://tecadmin.net/install-latest-nodejs-npm-on-ubuntu/
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN apt-get install -y nodejs
# Install carto
RUN npm -g install carto
# Install general purpose mapnik style
RUN git clone https://github.com/gravitystorm/openstreetmap-carto
WORKDIR openstreetmap-carto
RUN carto project.mml > osm.xml
# Install mapnik
RUN add-apt-repository -y ppa:no1wantdthisname/ppa
RUN apt-get update
RUN add-apt-repository -y ppa:talaj/osm-mapnik
RUN apt-get update
RUN apt-get install -y libboost-all-dev libmapnik-dev python-mapnik mapnik-utils
# INSTALL fonts
RUN sudo apt-get install -y ttf-unifont fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted
# Grab some extra noto fonts from Google
RUN mkdir /noto
WORKDIR /noto
RUN wget https://noto-website-2.storage.googleapis.com/pkgs/Noto-hinted.zip
RUN unzip Noto-hinted.zip
RUN cp /noto/*.otf /usr/share/fonts/opentype/noto/
RUN cp /noto/*.ttf /usr/share/fonts/truetype/noto
RUN fc-cache
# Cleanup
WORKDIR /
RUN rm /noto -R
RUN rm -rf /var/lib/apt/lists/*
# Add gen-tiles
COPY gen-tiles.py /
