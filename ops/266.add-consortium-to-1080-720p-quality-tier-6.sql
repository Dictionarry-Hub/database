-- @operation: export
-- @entity: batch
-- @name: Add CONSORTiUM to 1080/720p Quality Tier 6
-- @exportedAt: 2026-08-22T15:58:58.772Z
-- @opIds: 13396, 13397, 13398

-- --- BEGIN op 13396 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'CONSORTiUM', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'CONSORTiUM', 'CONSORTiUM');
-- --- END op 13396

-- --- BEGIN op 13397 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'CONSORTiUM', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'CONSORTiUM', 'CONSORTiUM');
-- --- END op 13397

-- --- BEGIN op 13398 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'CONSORTiUM', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'CONSORTiUM', 'CONSORTiUM');
-- --- END op 13398
