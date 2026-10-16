-- @operation: export
-- @entity: batch
-- @name: Fix WKS Ban
-- @exportedAt: 2026-10-16T19:10:11.424Z
-- @opIds: 15071

-- --- BEGIN op 15071 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'WKS', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'WKS', 'WKS');
-- --- END op 15071
