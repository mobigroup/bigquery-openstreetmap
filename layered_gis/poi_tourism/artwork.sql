SELECT
  2725 AS layer_code, 'poi_tourism' AS layer_class, 'artwork' AS layer_name, feature_type AS gdal_type, osm_id, osm_version, osm_timestamp, all_tags, geometry
FROM `openstreetmap-public-data-prod.osm_planet.features`
WHERE EXISTS(SELECT 1 FROM UNNEST(all_tags) as tags WHERE tags.key = 'tourism' AND tags.value='artwork')
