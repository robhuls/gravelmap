docker exec -i gravelmap_db_1 psql --username=gisuser --dbname=gis -c "CREATE EXTENSION postgis;"
docker exec -i gravelmap_db_1  psql --username=gisuser --dbname=gis -c "CREATE EXTENSION postgis_topology;"
docker exec -i gravelmap_db_1  psql --username=gisuser --dbname=gis -c "CREATE EXTENSION hstore;"
