[out:json][timeout:25];
area[name="Zürich"]["wikipedia"="de:Zürich"]->.zurich;
// gather results
(
  nwr["amenity"="police"](area.zurich);
);
// print results
out body;
>;
out skel qt;
