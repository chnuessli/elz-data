[out:json][timeout:25];
(
//Kanton Schaffhausen
area["ISO3166-2"="CH-SH"];
)->.searchArea;
// gather results
(
nwr["healthcare:speciality"="vaccination"](area.searchArea);
);
// print results
out body;
>;
out skel qt;