-- @operation: export
-- @entity: batch
-- @name: Move 0BSiDiAN to 1080/720p Tier 2
-- @exportedAt: 2026-09-03T23:39:00.198Z
-- @opIds: 14298, 14299, 14300, 14301, 14302

-- --- BEGIN op 14298 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 5 (Efficient)'
	  AND name = '0BSiDiAN'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14298

-- --- BEGIN op 14299 ( update custom_format "1080p Quality Tier 5" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 5'
	  AND name = '0BSiDiAN'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14299

-- --- BEGIN op 14300 ( update custom_format "1080p Quality Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 2', '0BSiDiAN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 2', '0BSiDiAN', '0BSiDiAN');
-- --- END op 14300

-- --- BEGIN op 14301 ( update custom_format "1080p Quality Tier 2 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 2 (Efficient)', '0BSiDiAN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 2 (Efficient)', '0BSiDiAN', '0BSiDiAN');
-- --- END op 14301

-- --- BEGIN op 14302 ( update custom_format "720p Quality Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 2', '0BSiDiAN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 2', '0BSiDiAN', '0BSiDiAN');
-- --- END op 14302
