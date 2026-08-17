-- @operation: export
-- @entity: batch
-- @name: Add HDL to 1080p/720p Quality Tier 5
-- @exportedAt: 2026-08-17T02:11:37.362Z
-- @opIds: 13133, 13134, 13135, 13136, 13137

-- --- BEGIN op 13133 ( create regular_expression "HDL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDL', '(?<=^|[\s.-])CRiME\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDL', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDL', 'Release Group');
-- --- END op 13133

-- --- BEGIN op 13134 ( update regular_expression "HDL" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])HDL\b' where "name" = 'HDL' and "pattern" = '(?<=^|[\s.-])CRiME\b';
-- --- END op 13134

-- --- BEGIN op 13135 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'HDL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'HDL', 'HDL');
-- --- END op 13135

-- --- BEGIN op 13136 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'HDL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'HDL', 'HDL');
-- --- END op 13136

-- --- BEGIN op 13137 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'HDL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'HDL', 'HDL');
-- --- END op 13137
