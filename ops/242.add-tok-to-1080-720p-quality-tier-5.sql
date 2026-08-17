-- @operation: export
-- @entity: batch
-- @name: Add ToK to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-17T20:10:46.854Z
-- @opIds: 13253, 13254, 13255, 13256, 13257

-- --- BEGIN op 13253 ( create regular_expression "ToK" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ToK', '(?<=^|[\s.-])Eby\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ToK', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ToK', 'Release Group');
-- --- END op 13253

-- --- BEGIN op 13254 ( update regular_expression "ToK" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])ToK\b' where "name" = 'ToK' and "pattern" = '(?<=^|[\s.-])Eby\b';
-- --- END op 13254

-- --- BEGIN op 13255 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'ToK', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'ToK', 'ToK');
-- --- END op 13255

-- --- BEGIN op 13256 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'ToK', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'ToK', 'ToK');
-- --- END op 13256

-- --- BEGIN op 13257 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'ToK', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'ToK', 'ToK');
-- --- END op 13257
