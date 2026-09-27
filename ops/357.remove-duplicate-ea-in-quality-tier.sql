-- @operation: export
-- @entity: batch
-- @name: Remove Duplicate EA in Quality Tier
-- @exportedAt: 2026-09-27T23:34:41.952Z
-- @opIds: 14621

-- --- BEGIN op 14621 ( update custom_format "720p Quality Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '720p Quality Tier 4'
	  AND name = 'EA'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14621
