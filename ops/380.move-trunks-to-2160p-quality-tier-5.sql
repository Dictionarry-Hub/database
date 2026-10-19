-- @operation: export
-- @entity: batch
-- @name: Move TRUNKS to 2160p Quality Tier 5
-- @exportedAt: 2026-10-19T00:43:01.161Z
-- @opIds: 15120, 15121

-- --- BEGIN op 15120 ( update custom_format "2160p Quality Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '2160p Quality Tier 4'
	  AND name = 'TRUNKS'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 15120

-- --- BEGIN op 15121 ( update custom_format "2160p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Quality Tier 5', 'TRUNKS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Quality Tier 5', 'TRUNKS', 'TRUNKS');
-- --- END op 15121
