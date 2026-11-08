-- @operation: export
-- @entity: batch
-- @name: Switch LACTATO to Language Groups
-- @exportedAt: 2026-11-08T18:34:29.621Z
-- @opIds: 15602, 15603

-- --- BEGIN op 15602 ( update custom_format "Banned Language Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Language Groups', 'LACTATO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Language Groups', 'LACTATO', 'LACTATO');
-- --- END op 15602

-- --- BEGIN op 15603 ( update custom_format "Banned Groups" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Banned Groups'
	  AND name = 'LACTATO'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 15603
