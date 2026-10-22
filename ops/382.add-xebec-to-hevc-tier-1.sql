-- @operation: export
-- @entity: batch
-- @name: Add XEBEC to HEVC Tier 1
-- @exportedAt: 2026-10-22T20:14:05.449Z
-- @opIds: 15127

-- --- BEGIN op 15127 ( update custom_format "1080p WEB-DL HEVC Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p WEB-DL HEVC Tier 1', 'XEBEC', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC Tier 1', 'XEBEC', 'XEBEC');
-- --- END op 15127
