-- @operation: export
-- @entity: batch
-- @name: Missing Group
-- @exportedAt: 2026-08-25T01:04:09.947Z
-- @opIds: 13590

-- --- BEGIN op 13590 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'BBW', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'BBW', 'BBW');
-- --- END op 13590
