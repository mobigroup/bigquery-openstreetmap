SELECT
  2902 AS layer_code, 'poi_miscpoi' AS layer_class, 'bench' AS layer_name, feature_type AS gdal_type, osm_id, osm_way_id, osm_timestamp, all_tags, geometry
FROM `openstreetmap-public-data-prod.osm_planet.features`
WHERE EXISTS(SELECT 1 FROM UNNEST(all_tags) as tags WHERE tags.key = 'bench' AND tags.value='bench')