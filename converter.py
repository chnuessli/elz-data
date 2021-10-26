import pandas as pd

df = pd.read_json (r'data/json/ambulance_station/ambulancestation_dispo_srz.geojson')
df.to_csv (r'data/csv/ambulance_station/ambulancestation_dispo_srz.csv', index = None)