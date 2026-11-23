-- @operation: export
-- @entity: batch
-- @name: GP CF Radarr Only
-- @exportedAt: 2026-11-23T00:48:57.601Z
-- @opIds: 15663

-- --- BEGIN op 15663 ( update custom_format "Golden Popcorn" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Golden Popcorn'
  AND name = 'Golden Popcorn'
  AND type = 'indexer_flag'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 15663
