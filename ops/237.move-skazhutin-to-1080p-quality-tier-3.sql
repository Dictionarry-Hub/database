-- @operation: export
-- @entity: batch
-- @name: Move Skazhutin to 1080p Quality Tier 3
-- @exportedAt: 2026-08-17T18:42:02.109Z
-- @opIds: 13222, 13223, 13224, 13225, 13226, 13227, 13228, 13229

-- --- BEGIN op 13222 ( update custom_format "1080p Quality Tier 4 (Efficient)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 4 (Efficient)'
	  AND name = 'Skazhutin'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13222

-- --- BEGIN op 13223 ( update custom_format "1080p Quality Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 4'
	  AND name = 'Skazhutin'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13223

-- --- BEGIN op 13224 ( update custom_format "1080p Quality Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 3', 'Skazhutin', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 3', 'Skazhutin', 'Skazhutin');
-- --- END op 13224

-- --- BEGIN op 13225 ( update custom_format "1080p Quality Tier 3 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 3 (Efficient)', 'Skazhutin', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 3 (Efficient)', 'Skazhutin', 'Skazhutin');
-- --- END op 13225

-- --- BEGIN op 13226 ( update custom_format "1080p Quality Tier 3 (Efficient)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 3 (Efficient)'
	  AND name = 'coffee'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13226

-- --- BEGIN op 13227 ( update custom_format "1080p Quality Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Quality Tier 3'
	  AND name = 'coffee'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 13227

-- --- BEGIN op 13228 ( update custom_format "1080p Quality Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 1', 'coffee', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 1', 'coffee', 'coffee');
-- --- END op 13228

-- --- BEGIN op 13229 ( update custom_format "1080p Quality Tier 1 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 1 (Efficient)', 'coffee', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 1 (Efficient)', 'coffee', 'coffee');
-- --- END op 13229
