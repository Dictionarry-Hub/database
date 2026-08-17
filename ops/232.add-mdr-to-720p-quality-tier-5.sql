-- @operation: export
-- @entity: batch
-- @name: Add MDR to 720p Quality Tier 5
-- @exportedAt: 2026-08-17T04:44:45.334Z
-- @opIds: 13191, 13192, 13193

-- --- BEGIN op 13191 ( create regular_expression "MDR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MDR', '(?<=^|[\s.-])PiPicK\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MDR', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MDR', 'Release Group');
-- --- END op 13191

-- --- BEGIN op 13192 ( update regular_expression "MDR" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])MDR\b' where "name" = 'MDR' and "pattern" = '(?<=^|[\s.-])PiPicK\b';
-- --- END op 13192

-- --- BEGIN op 13193 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'MDR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'MDR', 'MDR');
-- --- END op 13193
