-- @operation: export
-- @entity: batch
-- @name: Add GL to 1080p Quality Tier 5
-- @exportedAt: 2026-08-17T04:59:18.147Z
-- @opIds: 13216, 13217, 13218, 13219, 13220

-- --- BEGIN op 13216 ( create regular_expression "GL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('GL', '(?<=^|[\s.-])HDv0T\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GL', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('GL', 'Release Group');
-- --- END op 13216

-- --- BEGIN op 13217 ( update regular_expression "GL" )
update "regular_expressions" set "description" = NULL where "name" = 'GL' and "description" = 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot';
-- --- END op 13217

-- --- BEGIN op 13218 ( update regular_expression "GL" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])GL\b' where "name" = 'GL' and "pattern" = '(?<=^|[\s.-])HDv0T\b';
-- --- END op 13218

-- --- BEGIN op 13219 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'GL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'GL', 'GL');
-- --- END op 13219

-- --- BEGIN op 13220 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'GL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'GL', 'GL');
-- --- END op 13220
