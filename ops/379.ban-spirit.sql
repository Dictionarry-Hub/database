-- @operation: export
-- @entity: batch
-- @name: Ban SPiRiT
-- @exportedAt: 2026-10-17T18:00:36.721Z
-- @opIds: 15099, 15100

-- --- BEGIN op 15099 ( update custom_format "WEB-DL Tier 4" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'WEB-DL Tier 4'
	  AND name = 'SPiRiT'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 15099

-- --- BEGIN op 15100 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'SPiRiT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'SPiRiT', 'SPiRiT');
-- --- END op 15100
