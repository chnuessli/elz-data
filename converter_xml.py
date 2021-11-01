from json2xml import json2xml
from json2xml.utils import readfromurl, readfromstring, readfromjson

# get the data from an URL
data = readfromjson("data\json\ambulance_station\ambulancestation_dispo_srz.json")
print(json2xml.Json2xml(data).to_xml())