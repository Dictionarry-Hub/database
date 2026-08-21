-- @operation: export
-- @entity: batch
-- @name: Add OB1 to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-21T22:56:50.330Z
-- @opIds: 13292, 13293, 13294, 13295

-- --- BEGIN op 13292 ( create regular_expression "OB1" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('OB1', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OB1', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('OB1', 'Release Group');
-- --- END op 13292

-- --- BEGIN op 13293 ( update regular_expression "OB1" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])OB1\b' where "name" = 'OB1' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13293

-- --- BEGIN op 13294 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'OB1', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'OB1', 'OB1');
-- --- END op 13294

-- --- BEGIN op 13295 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'OB1', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'OB1', 'OB1');
-- --- END op 13295
