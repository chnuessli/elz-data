[out:json][timeout:25];
area[name="Zürich"]["wikipedia"="de:Zürich"]->.zurich;
// gather results
(
  // query part for: “amenity=kindergarten”
  nwr["amenity"="kindergarten"](area.searchArea);
);
// print results
out body;
>;
out skel qt;