SELECT
  2519 AS layer_code, 'poi_shopping' AS layer_class, 'optician' AS layer_name, feature_type AS gdal_type, osm_id, osm_version, osm_timestamp, all_tags, geometry
FROM `openstreetmap-public-data-prod.osm_planet.features`
WHERE EXISTS(SELECT 1 FROM UNNEST(all_tags) as tags WHERE tags.key = 'shop' AND tags.value='optician')
