-- @operation: export
-- @entity: batch
-- @name: Bump RAWR to WEB-DL Tier 2
-- @exportedAt: 2026-10-17T15:30:28.614Z
-- @opIds: 15096, 15097

-- --- BEGIN op 15096 ( update custom_format "WEB-DL Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'WEB-DL Tier 3'
	  AND name = 'RAWR'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 15096

-- --- BEGIN op 15097 ( update custom_format "WEB-DL Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB-DL Tier 2', 'RAWR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB-DL Tier 2', 'RAWR', 'RAWR');
-- --- END op 15097
