-- @operation: export
-- @entity: batch
-- @name: Move HDC to 1080p Quality Tier 5
-- @exportedAt: 2026-08-22T15:36:34.291Z
-- @opIds: 13386, 13387, 13388

-- --- BEGIN op 13386 ( update custom_format "1080p Quality Tier 6" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 6'
	  AND name = 'HDC'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13386

-- --- BEGIN op 13387 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'HDC', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'HDC', 'HDC');
-- --- END op 13387

-- --- BEGIN op 13388 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'HDC', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'HDC', 'HDC');
-- --- END op 13388
