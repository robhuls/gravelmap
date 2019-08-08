wget https://svn.openstreetmap.org/applications/rendering/mapnik/generate_image.py
wget https://svn.openstreetmap.org/applications/rendering/mapnik/generate_tiles.py
mkdir temp
cd temp
wget http://download.geofabrik.de/europe/netherlands/overijssel-latest.osm.bz2
bzip2 -d overijssel-latest.osm.bz2
