-- @operation: export
-- @entity: batch
-- @name: Fix HDTV CF
-- @exportedAt: 2026-08-19T17:12:10.609Z
-- @opIds: 13265, 13266

-- --- BEGIN op 13265 ( update custom_format "720p HDTV Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '720p HDTV Tier 3'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 13265

-- --- BEGIN op 13266 ( update custom_format "720p HDTV Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p HDTV Tier 3', '720p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('720p HDTV Tier 3', '720p', '720p');
-- --- END op 13266
