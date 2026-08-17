-- @operation: export
-- @entity: batch
-- @name: Add SillyBird to 720p Quality Tier 5
-- @exportedAt: 2026-08-17T04:20:01.384Z
-- @opIds: 13165, 13166, 13167

-- --- BEGIN op 13165 ( create regular_expression "SillyBird" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SillyBird', '(?<=^|[\s.-])OmertaHD\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SillyBird', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SillyBird', 'Release Group');
-- --- END op 13165

-- --- BEGIN op 13166 ( update regular_expression "SillyBird" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])SillyBird\b' where "name" = 'SillyBird' and "pattern" = '(?<=^|[\s.-])OmertaHD\b';
-- --- END op 13166

-- --- BEGIN op 13167 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'SillyBird', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'SillyBird', 'SillyBird');
-- --- END op 13167
