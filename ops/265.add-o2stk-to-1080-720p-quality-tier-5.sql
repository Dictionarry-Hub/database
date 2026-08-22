-- @operation: export
-- @entity: batch
-- @name: Add O2STK to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-22T15:55:23.007Z
-- @opIds: 13390, 13391, 13392, 13393, 13394

-- --- BEGIN op 13390 ( create regular_expression "O2STK" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('O2STK', '(?<=^|[\s.-])POH\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('O2STK', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('O2STK', 'Release Group');
-- --- END op 13390

-- --- BEGIN op 13391 ( update regular_expression "O2STK" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])O2STK\b' where "name" = 'O2STK' and "pattern" = '(?<=^|[\s.-])POH\b';
-- --- END op 13391

-- --- BEGIN op 13392 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'O2STK', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'O2STK', 'O2STK');
-- --- END op 13392

-- --- BEGIN op 13393 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'O2STK', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'O2STK', 'O2STK');
-- --- END op 13393

-- --- BEGIN op 13394 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'O2STK', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'O2STK', 'O2STK');
-- --- END op 13394
