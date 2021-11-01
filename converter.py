import pandas as pd

# Converting JSON Data to CSV

df = pd.read_json (r'data\json\ambulance_station\ambulancestation_dispo_srz.geojson')
df.to_csv (r'data/csv/ambulance_station/ambulancestation_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/defis/defis_dispo_srz.geojson')
df.to_csv (r'data/csv/defis/defis_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/defis/defis_dispo_srz.geojson')
df.to_csv (r'data/csv/defis/defis_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/defis/defis_kt_zh.geojson')
df.to_csv (r'data/csv/defis/defis_kt_zh.csv', index = None)

df = pd.read_json (r'data/json/defis/defis_stadt_zh.geojson')
df.to_csv (r'data/csv/defis/defis_stadt_zh.csv', index = None)

df = pd.read_json (r'data/json/fire_station/firestation_kt_zh.geojson')
df.to_csv (r'data/csv/fire_station/firestation_kt_zh.csv', index = None)

#df = pd.read_json (r'data\json\ambulance_station\ambulancestation_dispo_srz.geojson')
#df.to_excel (r'data/csv/ambulance_station/ambulancestation_dispo_srz.xlsx', index = None)

#df = pd.read_json (r'data\json\ambulance_station\ambulancestation_dispo_srz.geojson')
#df.to_xml (r'data/csv/ambulance_station/ambulancestation_dispo_srz.xml', index = None)