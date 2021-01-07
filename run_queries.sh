#!/bin/bash

set -e
set -o pipefail

function cleanup {
  exit $?
}
trap "cleanup" EXIT

DIR="$(cd "$(dirname "$0")" && pwd)"


# Defibrillatoren Dispogebiet SRZ
echo -ne "Query Defibrillatoren Dispogebiet SRZ...         "
cat $DIR/queries/defis_dispo_srz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/defis/defis_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Stadt Zürich
echo -ne "Query Defibrillatoren Stadt Zürich...            "
cat $DIR/queries/defis_stadt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/defis/defis_stadt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Defibrillatoren Kanton Zürich
echo -ne "Query Defibrillatoren Kanton Zürich...           "
cat $DIR/queries/defis_kt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/defis/defis_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler und Altersheime Dispogebiet SRZ
echo -ne "Query Spitäler und Altersheime Dispogebiet SRZ..."
cat $DIR/queries/facilities_dispo_srz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/facilities_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler und Altersheime Stadt Zürich
echo -ne "Query Spitäler und Altersheime Stadt Zürich...  "
cat $DIR/queries/facilities_stadt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/ambulance_station/facilities/facilities_stadt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Rettungswachen Dispogebiet SRZ
echo -ne "Query Rettungswachen Dispogebiet SRZ...           "
cat $DIR/queries/ambulancestation_dispo_srz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/ambulance_station/ambulancestation_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Feuerwehrwachen Kanton Zürich
echo -ne "Query Feuerwehrwachen Kanton Zürich...           "
cat $DIR/queries/firestation_kt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/fire_station/firestation_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Helipads Dispogebiet SRZ
echo -ne "Query Helipads Dispogebiet SRZ...           "
cat $DIR/queries/helipads_dispo_srz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/helipad/helipads_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Dispogebiet SRZ
echo -ne "Query Polizeistationen Dispogebiet SRZ...           "
cat $DIR/queries/police_station_dispo_srz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/police_station/police_station_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Kanton Zürich
echo -ne "Query Polizeistationen Kanton Zürich...           "
cat $DIR/queries/police_station_kt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/police_station/police_station_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""