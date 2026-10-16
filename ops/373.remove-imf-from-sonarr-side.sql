-- @operation: export
-- @entity: batch
-- @name: Remove IMF from Sonarr Side
-- @exportedAt: 2026-10-16T19:00:42.186Z
-- @opIds: 15069

-- --- BEGIN op 15069 ( update custom_format "IMF" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'IMF'
  AND name = 'Interoperable Master Format'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 15069
