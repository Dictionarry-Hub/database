-- @operation: export
-- @entity: batch
-- @name: Add UxO to 1080p Quality Tier 5
-- @exportedAt: 2026-08-17T02:18:08.024Z
-- @opIds: 13149, 13150, 13151

-- --- BEGIN op 13149 ( create regular_expression "UxO" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('UxO', '(?<=^|[\s.-])POH\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UxO', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('UxO', 'Release Group');
-- --- END op 13149

-- --- BEGIN op 13150 ( update regular_expression "UxO" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])UxO\b' where "name" = 'UxO' and "pattern" = '(?<=^|[\s.-])POH\b';
-- --- END op 13150

-- --- BEGIN op 13151 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'UxO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'UxO', 'UxO');
-- --- END op 13151
