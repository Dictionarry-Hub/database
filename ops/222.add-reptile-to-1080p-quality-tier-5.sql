-- @operation: export
-- @entity: batch
-- @name: Add REPTiLE to 1080p Quality Tier 5
-- @exportedAt: 2026-08-17T02:13:48.985Z
-- @opIds: 13139, 13140, 13141, 13142, 13143

-- --- BEGIN op 13139 ( create regular_expression "REPTiLE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('REPTiLE', '(?<=^|[\s.-])HDL\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('REPTiLE', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('REPTiLE', 'Release Group');
-- --- END op 13139

-- --- BEGIN op 13140 ( update regular_expression "REPTiLE" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])REPTiLE\b' where "name" = 'REPTiLE' and "pattern" = '(?<=^|[\s.-])HDL\b';
-- --- END op 13140

-- --- BEGIN op 13141 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'REPTiLE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'REPTiLE', 'REPTiLE');
-- --- END op 13141

-- --- BEGIN op 13142 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'REPTiLE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'REPTiLE', 'REPTiLE');
-- --- END op 13142

-- --- BEGIN op 13143 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'REPTiLE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'REPTiLE', 'REPTiLE');
-- --- END op 13143
