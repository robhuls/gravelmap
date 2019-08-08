FROM postgres:10
MAINTAINER Rob Huls (robhuls@gmail.com)
# Add postgis
RUN apt-get update && apt-get upgrade -y && apt-get install postgresql-10-postgis-2.5 postgresql-10-postgis-2.5-scripts sudo -y --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Update ubuntu and install wget and sudo
# RUN apt-get update && apt-get upgrade -y && apt-get install wget sudo -y
# Install postgres
#RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
#RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" >> /etc/apt/sources.list.d/postgresql.list'
#RUN apt-get update && apt-get -y install postgresql-10 postgresql-10-postgis-2.5  unzip
# Configure postgres
# RUN sudo -u postgres createuser gisuser
# RUN sudo -u postgres createdb --encoding=UTF8 --owner=gisuser gis
# RUN sudo -u postgres psql --username=postgres --dbname=gis -c "CREATE EXTENSION postgis;"
# RUN sudo -u postgres psql --username=postgres --dbname=gis -c "CREATE EXTENSION postgis_topology;"
# RUN sudo -u postgres psql --username=postgres --dbname=gis -c "CREATE EXTENSION hstore;"
# Install osm2psql
# RUN sudo apt-get -y install osm2pgsql
