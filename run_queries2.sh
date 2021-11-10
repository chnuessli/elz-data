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
cat $DIR/queries/defis_dispo_srz2.txt | python $DIR/overpass_query.py | osmtoxml > $DIR/data/json/defis/defis_dispo_srz.xml
echo -ne "\t\t - Done.\r"
echo ""
