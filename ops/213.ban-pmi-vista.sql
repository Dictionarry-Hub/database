-- @operation: export
-- @entity: batch
-- @name: Ban PMI / ViSTA
-- @exportedAt: 2026-08-11T22:00:30.548Z
-- @opIds: 12798, 12799, 12800, 12801

-- --- BEGIN op 12798 ( update custom_format "Banned Language Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Language Groups', 'PMI', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Language Groups', 'PMI', 'PMI');
-- --- END op 12798

-- --- BEGIN op 12799 ( update custom_format "Banned Language Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Language Groups', 'ViSTA', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Language Groups', 'ViSTA', 'ViSTA');
-- --- END op 12799

-- --- BEGIN op 12800 ( update custom_format "Amazon Channel Enhancement" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Amazon Channel Enhancement'
	  AND name = 'PMI'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 12800

-- --- BEGIN op 12801 ( update custom_format "Amazon Channel Enhancement" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Amazon Channel Enhancement'
	  AND name = 'ViSTA'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 12801
