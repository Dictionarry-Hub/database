-- @operation: export
-- @entity: batch
-- @name: Add CRiME to 1080p Quality Tier 5
-- @exportedAt: 2026-08-17T01:50:43.009Z
-- @opIds: 13114, 13115, 13116, 13117

-- --- BEGIN op 13114 ( create regular_expression "CRiME" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CRiME', '(?<=^|[\s.-])BakedFEL\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CRiME', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CRiME', 'Release Group');
-- --- END op 13114

-- --- BEGIN op 13115 ( update regular_expression "CRiME" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])CRiME\b' where "name" = 'CRiME' and "pattern" = '(?<=^|[\s.-])BakedFEL\b';
-- --- END op 13115

-- --- BEGIN op 13116 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'CRiME', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'CRiME', 'CRiME');
-- --- END op 13116

-- --- BEGIN op 13117 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'CRiME', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'CRiME', 'CRiME');
-- --- END op 13117
