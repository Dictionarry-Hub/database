-- @operation: export
-- @entity: batch
-- @name: Move Thd to 1080p Quality Tier 5
-- @exportedAt: 2026-08-17T02:04:24.809Z
-- @opIds: 13119, 13120, 13121, 13122, 13123, 13124, 13125, 13126

-- --- BEGIN op 13119 ( update custom_format "1080p Quality Tier 6" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 6'
	  AND name = 'ThD'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13119

-- --- BEGIN op 13120 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'ThD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'ThD', 'ThD');
-- --- END op 13120

-- --- BEGIN op 13121 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 6 (Efficient)'
	  AND name = 'ThD'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13121

-- --- BEGIN op 13122 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'ThD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'ThD', 'ThD');
-- --- END op 13122

-- --- BEGIN op 13123 ( update custom_format "1080p Quality Tier 1" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 1'
	  AND name = 'coffee'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13123

-- --- BEGIN op 13124 ( update custom_format "1080p Quality Tier 1 (Efficient)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 1 (Efficient)'
	  AND name = 'coffee'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13124

-- --- BEGIN op 13125 ( update custom_format "1080p Quality Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 3', 'coffee', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 3', 'coffee', 'coffee');
-- --- END op 13125

-- --- BEGIN op 13126 ( update custom_format "1080p Quality Tier 3 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 3 (Efficient)', 'coffee', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 3 (Efficient)', 'coffee', 'coffee');
-- --- END op 13126
