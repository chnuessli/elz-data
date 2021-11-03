import json as j

with open("json_file.json") as json_format_file: 
  d = j.load(json_format_file)

import xml.etree.cElementTree as e

r = e.Element("Employee")
e.SubElement(r,"Name").text = d["Name"]
e.SubElement(r,"Designation").text = d["Designation"]
e.SubElement(r,"Salary").text = str(d["Salary"])
e.SubElement(r,"Age").text = str(d["Age"])

project = e.SubElement(r,"Projects")
for z in d["Projects"]:
  e.SubElement(project,"Topic").text = z["Topic"]
  e.SubElement(project,"Category").text = z["Category"]
  e.SubElement(project,"Months").text = str(z["Months"])

a = e.ElementTree(r)
a.write("json_to_xml.xml")

#from json2xml import json2xml
#from json2xml.utils import readfromurl, readfromstring, readfromjson

# get the data from an URL
#data = readfromjson("data\json\ambulance_station\ambulancestation_dispo_srz.json")
#print(json2xml.Json2xml(data).to_xml())