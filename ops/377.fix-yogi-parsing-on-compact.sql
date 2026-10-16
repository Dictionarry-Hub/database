-- @operation: export
-- @entity: batch
-- @name: Fix Yogi Parsing on Compact
-- @exportedAt: 2026-10-16T19:58:56.857Z
-- @opIds: 15091, 15092, 15093, 15094

-- --- BEGIN op 15091 ( update custom_format "1080p Compact Movie Bluray Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Compact Movie Bluray Tier 4', 'Not HONE', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact Movie Bluray Tier 4', 'Not HONE', 'HONE');
-- --- END op 15091

-- --- BEGIN op 15092 ( update custom_format "1080p Compact Movie WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Compact Movie WEB Tier 1', 'Not HONE', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact Movie WEB Tier 1', 'Not HONE', 'HONE');
-- --- END op 15092

-- --- BEGIN op 15093 ( update custom_format "1080p Compact TV Bluray Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Compact TV Bluray Tier 6', 'Not HONE', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV Bluray Tier 6', 'Not HONE', 'HONE');
-- --- END op 15093

-- --- BEGIN op 15094 ( update custom_format "1080p Compact TV WEB Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Compact TV WEB Tier 1', 'Not HONE', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV WEB Tier 1', 'Not HONE', 'HONE');
-- --- END op 15094
