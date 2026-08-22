-- @operation: export
-- @entity: batch
-- @name: Revert HDC back to Tier 6
-- @exportedAt: 2026-08-22T16:07:11.374Z
-- @opIds: 13400, 13401, 13402

-- --- BEGIN op 13400 ( update custom_format "1080p Quality Tier 5" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 5'
	  AND name = 'HDC'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13400

-- --- BEGIN op 13401 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 5 (Efficient)'
	  AND name = 'HDC'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13401

-- --- BEGIN op 13402 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'HDC', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'HDC', 'HDC');
-- --- END op 13402
