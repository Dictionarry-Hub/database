-- @operation: export
-- @entity: batch
-- @name: Move FraMeSToR to 1080p Quality Tier 6
-- @exportedAt: 2026-08-17T02:08:16.423Z
-- @opIds: 13128, 13129, 13130, 13131

-- --- BEGIN op 13128 ( update custom_format "1080p Quality Tier 5" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 5'
	  AND name = 'FraMeSToR'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13128

-- --- BEGIN op 13129 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 5 (Efficient)'
	  AND name = 'FraMeSToR'
	  AND type = 'release_group'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13129

-- --- BEGIN op 13130 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'FraMeSToR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'FraMeSToR', 'FraMeSToR');
-- --- END op 13130

-- --- BEGIN op 13131 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'FraMeSToR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'FraMeSToR', 'FraMeSToR');
-- --- END op 13131
