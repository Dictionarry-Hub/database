-- @operation: export
-- @entity: batch
-- @name: Add Moshy to 720p Quality Tier 5
-- @exportedAt: 2026-08-26T22:54:45.497Z
-- @opIds: 13752, 13753, 13754, 13755

-- --- BEGIN op 13752 ( create regular_expression "Moshy" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Moshy', '(?<=^|[\s.-])MDR\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Moshy', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Moshy', 'Release Group');
-- --- END op 13752

-- --- BEGIN op 13753 ( update regular_expression "Moshy" )
update "regular_expressions" set "description" = NULL where "name" = 'Moshy' and "description" = 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot';
-- --- END op 13753

-- --- BEGIN op 13754 ( update regular_expression "Moshy" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Moshy\b' where "name" = 'Moshy' and "pattern" = '(?<=^|[\s.-])MDR\b';
-- --- END op 13754

-- --- BEGIN op 13755 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'Moshy', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'Moshy', 'Moshy');
-- --- END op 13755
