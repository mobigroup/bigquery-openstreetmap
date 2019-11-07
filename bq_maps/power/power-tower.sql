SELECT
  6401 AS layer_code, 'power' AS layer_class, 'tower' AS layer_name, feature_type AS gdal_type, osm_id, osm_way_id, osm_timestamp, all_tags, geometry
FROM `..features`
WHERE EXISTS(SELECT 1 FROM UNNEST(all_tags) as tags WHERE tags.key = 'power' AND tags.value='tower')
