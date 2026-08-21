-- @operation: export
-- @entity: batch
-- @name: Add ZiNC to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-21T23:02:17.218Z
-- @opIds: 13297, 13298, 13299, 13300

-- --- BEGIN op 13297 ( create regular_expression "ZiNC" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZiNC', '(?<=^|[\s.-])OB1\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZiNC', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZiNC', 'Release Group');
-- --- END op 13297

-- --- BEGIN op 13298 ( update regular_expression "ZiNC" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])ZiNC\b' where "name" = 'ZiNC' and "pattern" = '(?<=^|[\s.-])OB1\b';
-- --- END op 13298

-- --- BEGIN op 13299 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'ZiNC', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'ZiNC', 'ZiNC');
-- --- END op 13299

-- --- BEGIN op 13300 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'ZiNC', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'ZiNC', 'ZiNC');
-- --- END op 13300
