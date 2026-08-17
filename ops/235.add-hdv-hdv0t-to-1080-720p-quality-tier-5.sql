-- @operation: export
-- @entity: batch
-- @name: Add HDV & HDv0T to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-17T04:57:30.686Z
-- @opIds: 13205, 13206, 13207, 13208, 13209, 13210, 13211, 13212, 13213, 13214

-- --- BEGIN op 13205 ( create regular_expression "HDV" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDV', '(?<=^|[\s.-])aNDy\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDV', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDV', 'Release Group');
-- --- END op 13205

-- --- BEGIN op 13206 ( update regular_expression "HDV" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])HDV\b' where "name" = 'HDV' and "pattern" = '(?<=^|[\s.-])aNDy\b';
-- --- END op 13206

-- --- BEGIN op 13207 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'HDV', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'HDV', 'HDV');
-- --- END op 13207

-- --- BEGIN op 13208 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'HDV', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'HDV', 'HDV');
-- --- END op 13208

-- --- BEGIN op 13209 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'HDV', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'HDV', 'HDV');
-- --- END op 13209

-- --- BEGIN op 13210 ( create regular_expression "HDv0T" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDv0T', '(?<=^|[\s.-])HDV\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDv0T', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDv0T', 'Release Group');
-- --- END op 13210

-- --- BEGIN op 13211 ( update regular_expression "HDv0T" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])HDv0T\b' where "name" = 'HDv0T' and "pattern" = '(?<=^|[\s.-])HDV\b';
-- --- END op 13211

-- --- BEGIN op 13212 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'HDv0T', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'HDv0T', 'HDv0T');
-- --- END op 13212

-- --- BEGIN op 13213 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'HDv0T', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'HDv0T', 'HDv0T');
-- --- END op 13213

-- --- BEGIN op 13214 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'HDv0T', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'HDv0T', 'HDv0T');
-- --- END op 13214
