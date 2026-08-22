-- @operation: export
-- @entity: batch
-- @name: Add GrapeHD to 1080p Quality Tier 5
-- @exportedAt: 2026-08-22T15:33:36.455Z
-- @opIds: 13383, 13384

-- --- BEGIN op 13383 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'GrapeHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'GrapeHD', 'GrapeHD');
-- --- END op 13383

-- --- BEGIN op 13384 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'GrapeHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'GrapeHD', 'GrapeHD');
-- --- END op 13384
