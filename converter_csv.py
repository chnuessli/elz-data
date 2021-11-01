import pandas as pd

# Converting JSON Data to CSV

#Rettungswachen
df = pd.read_json (r'data\json\ambulance_station\ambulancestation_dispo_srz.geojson')
df.to_csv (r'data/csv/ambulance_station/ambulancestation_dispo_srz.csv', index = None)

# Defibrillatoren
df = pd.read_json (r'data/json/defis/defis_dispo_srz.geojson')
df.to_csv (r'data/csv/defis/defis_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/defis/defis_dispo_srz.geojson')
df.to_csv (r'data/csv/defis/defis_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/defis/defis_kt_zh.geojson')
df.to_csv (r'data/csv/defis/defis_kt_zh.csv', index = None)

df = pd.read_json (r'data/json/defis/defis_stadt_zh.geojson')
df.to_csv (r'data/csv/defis/defis_stadt_zh.csv', index = None)

# Feuerwachen
df = pd.read_json (r'data/json/fire_station/firestation_kt_zh.geojson')
df.to_csv (r'data/csv/fire_station/firestation_kt_zh.csv', index = None)

# Tore
df = pd.read_json (r'data/json/access/gates/gates_dispo_srz.geojson')
df.to_csv (r'data/csv/access/gates/gates_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/access/gates/gates_kt_sh.geojson')
df.to_csv (r'data/csv/access/gates/gates_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/access/gates/gates_kt_sz.geojson')
df.to_csv (r'data/csv/access/gates/gates_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/access/gates/gates_kt_zg.geojson')
df.to_csv (r'data/csv/access/gates/gates_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/access/gates/gates_kt_zh.geojson')
df.to_csv (r'data/csv/access/gates/gates_kt_zh.csv', index = None)

#Helipads

df = pd.read_json (r'data/json/helipad/helipads_dispo_srz.geojson')
df.to_csv (r'data/csv/helipad/helipads_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/helipad/helipads_switzerland.geojson')
df.to_csv (r'data/csv/helipad/helipads_switzerland.csv', index = None)

#Spitäler
df = pd.read_json (r'data/json/facilities/hospital/hospital_dispo_srz.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_kt_sh.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_kt_sz.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_kt_zg.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_kt_zh.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_kt_zh.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_kt_sh.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/facilities/hospital/hospital_switzerland.geojson')
df.to_csv (r'data/csv/facilities/hospital/hospital_switzerland.csv', index = None)

#Heime
df = pd.read_json (r'data/json/facilities/nursing_home/nursing_home_dispo_srz.geojson')
df.to_csv (r'data/csv/facilities/nursing_home/nursing_home_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/facilities/nursing_home/nursing_home_kt_sh.geojson')
df.to_csv (r'data/csv/facilities/nursing_home/nursing_home_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/facilities/nursing_home/nursing_home_kt_sz.geojson')
df.to_csv (r'data/csv/facilities/nursing_home/nursing_home_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/facilities/nursing_home/nursing_home_kt_zg.geojson')
df.to_csv (r'data/csv/facilities/nursing_home/nursing_home_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/facilities/nursing_home/nursing_home_kt_zh.geojson')
df.to_csv (r'data/csv/facilities/nursing_home/nursing_home_kt_zh.csv', index = None)

#Apotheken
df = pd.read_json (r'data/json/pharmacy/pharmacy_dispo_srz.geojson')
df.to_csv (r'data/csv/pharmacy/pharmacy_dispo_srz.csv', index = None)

df = pd.read_json (r'data/json/pharmacy/pharmacy_kt_sh.geojson')
df.to_csv (r'data/csv/pharmacy/pharmacy_kt_sh.csv', index = None)

df = pd.read_json (r'data/json/pharmacy/pharmacy_kt_sz.geojson')
df.to_csv (r'data/csv/pharmacy/pharmacy_kt_sz.csv', index = None)

df = pd.read_json (r'data/json/pharmacy/pharmacy_kt_zg.geojson')
df.to_csv (r'data/csv/pharmacy/pharmacy_kt_zg.csv', index = None)

df = pd.read_json (r'data/json/pharmacy/pharmacy_kt_zh.geojson')
df.to_csv (r'data/csv/pharmacy/pharmacy_kt_zh.csv', index = None)
