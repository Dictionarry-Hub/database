-- @operation: export
-- @entity: batch
-- @name: Move SiCFoI to Remux Tier 4
-- @exportedAt: 2026-10-07T00:04:53.019Z
-- @opIds: 14632, 14633

-- --- BEGIN op 14632 ( update custom_format "Remux Tier 3" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Remux Tier 3'
	  AND name = 'SiCFoI'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14632

-- --- BEGIN op 14633 ( update custom_format "Remux Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 4', 'SiCFoI', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 4', 'SiCFoI', 'SiCFoI');
-- --- END op 14633
