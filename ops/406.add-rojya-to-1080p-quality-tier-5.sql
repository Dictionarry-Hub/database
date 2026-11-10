-- @operation: export
-- @entity: batch
-- @name: Add RoJYA to 1080p Quality Tier 5
-- @exportedAt: 2026-11-10T23:42:15.605Z
-- @opIds: 15609

-- --- BEGIN op 15609 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'RoJYA', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'RoJYA', 'RoJYA');
-- --- END op 15609
