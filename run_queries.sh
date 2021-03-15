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

# Spitäler Dispogebiet SRZ
echo -ne "Query Spitäler Dispogebiet SRZ..."
cat $DIR/queries/hospital_dispo_srz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/hospital/hospital_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler Kanton ZH
echo -ne "Query Spitäler Kanton ZH..."
cat $DIR/queries/hospital_kt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/hospital/hospital_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler Kanton SH
echo -ne "Query Spitäler Kanton SH..."
cat $DIR/queries/hospital_kt_sh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/hospital/hospital_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler Kanton SZ
echo -ne "Query Spitäler Kanton SZ..."
cat $DIR/queries/hospital_kt_sz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/hospital/hospital_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler Kanton ZG
echo -ne "Query Spitäler Kanton ZG..."
cat $DIR/queries/hospital_kt_zg.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/hospital/hospital_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Spitäler Schweiz
echo -ne "Query Spitäler Schweiz..."
cat $DIR/queries/hospital_switzerland.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/hospital/hospital_switzerland.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Altersheime Dispogebiet SRZ
echo -ne "Query Altersheime Dispogebiet SRZ..."
cat $DIR/queries/nursing_home_dispo_srz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/nursing_home/nursing_home_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Altersheime Kanton ZH
echo -ne "Query Altersheime Kanton ZH..."
cat $DIR/queries/nursing_home_kt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/nursing_home/nursing_home_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Altersheime Kanton SH
echo -ne "Query Altersheime Kanton SH..."
cat $DIR/queries/nursing_home_kt_sh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/nursing_home/nursing_home_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Altersheime Kanton SZ
echo -ne "Query Altersheime Kanton SZ..."
cat $DIR/queries/nursing_home_kt_sz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/nursing_home/nursing_home_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Altersheime Kanton ZG
echo -ne "Query Altersheime Kanton ZG..."
cat $DIR/queries/nursing_home_kt_zg.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/facilities/nursing_home/nursing_home_kt_zg.geojson
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

# Helipads ganze CH
echo -ne "Query Helipads ganze Schweiz...           "
cat $DIR/queries/helipads_switzerland.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/helipad/helipads_switzerland.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Dispogebiet SRZ
echo -ne "Query Polizeistationen Dispogebiet SRZ...           "
cat $DIR/queries/police_station_dispo_srz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/police_station/police_station_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Kanton Schaffhausen
echo -ne "Query Polizeistationen Kanton Schaffhausen...           "
cat $DIR/queries/police_station_kt_sh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/police_station/police_station_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Kanton Schwyz
echo -ne "Query Polizeistationen Kanton Schwyz...           "
cat $DIR/queries/police_station_kt_sz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/police_station/police_station_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Kanton Zug
echo -ne "Query Polizeistationen Kanton Zug...           "
cat $DIR/queries/police_station_kt_zg.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/police_station/police_station_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Polizeistationen Kanton Zürich
echo -ne "Query Polizeistationen Kanton Zürich...           "
cat $DIR/queries/police_station_kt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/police_station/police_station_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""
# Polizeistationen Stadt Zürich (Stapo und Kapo)
echo -ne "Query Polizeistationen Stadt Zürich...           "
cat $DIR/queries/police_station_stadt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/police_station/police_station_stadt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Tore und Barrieren Dispogebiet SRZ
echo -ne "Query Gates Dispo SRZ...           "
cat $DIR/queries/gates_dispo_srz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/access/gates/gates_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Tore und Barrieren Kanton ZH
echo -ne "Query Tore und Barrieren Kanton ZH...           "
cat $DIR/queries/gates_kt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/access/gates/gates_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Tore und Barrieren Kanton SZ
echo -ne "Query Tore und Barrieren Kanton SZ...           "
cat $DIR/queries/gates_kt_sz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/access/gates/gates_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Tore und Barrieren Kanton SH
echo -ne "Query Tore und Barrieren Kanton SH...           "
cat $DIR/queries/gates_kt_sh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/access/gates/gates_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Tore und Barrieren Kanton ZG
echo -ne "Query Tore und Barrieren Kanton ZG...           "
cat $DIR/queries/gates_kt_zg.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/access/gates/gates_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Apotheken Dispo SRZ
echo -ne "Query Apotheken Dispo SRZ...           "
cat $DIR/queries/pharmacy_dispo_srz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/pharmacy/pharmacy_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Apotheken Kanton Zürich
echo -ne "Query Apotheken Kanton Zürich...           "
cat $DIR/queries/pharmacy_kt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/pharmacy/pharmacy_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Apotheken Kanton Schwyz
echo -ne "Query Apotheken Kanton Schwyz...           "
cat $DIR/queries/pharmacy_kt_sz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/pharmacy/pharmacy_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Apotheken Kanton Schaffhausen
echo -ne "Query Apotheken Kanton Schaffhausen...           "
cat $DIR/queries/pharmacy_kt_sh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/pharmacy/pharmacy_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Apotheken Kanton Schwyz
echo -ne "Query Apotheken Kanton Zug...           "
cat $DIR/queries/pharmacy_kt_zg.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/pharmacy/pharmacy_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Schweiz
echo -ne "Query Impfzentren Schweiz...           "
cat $DIR/queries/vaccination_switzerland.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/vaccination/vaccination_switzerland.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Dispo SRZ
echo -ne "Query Impfzentren Dispo SRZ...           "
cat $DIR/queries/vaccination_dispo_srz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/vaccination/vaccination_dispo_srz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Kanton Zürich
echo -ne "Query Impfzentren Kanton Zürich...           "
cat $DIR/queries/vaccination_kt_zh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/vaccination/vaccination_kt_zh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Kanton Schwyz
echo -ne "Query Impfzentren Kanton Schwyz...           "
cat $DIR/queries/vaccination_kt_sz.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/vaccination/vaccination_kt_sz.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Kanton Schaffhausen
echo -ne "Query Impfzentren Kanton Schaffhausen...           "
cat $DIR/queries/vaccination_kt_sh.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/vaccination/vaccination_kt_sh.geojson
echo -ne "\t\t - Done.\r"
echo ""

# Impfzentren Kanton Zug
echo -ne "Query Impfzentren Kanton Zug...           "
cat $DIR/queries/vaccination_kt_zg.txt | python $DIR/overpass_query.py | osmtogeojson > $DIR/data/vaccination/vaccination_kt_zg.geojson
echo -ne "\t\t - Done.\r"
echo ""