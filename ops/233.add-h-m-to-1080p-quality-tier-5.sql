-- @operation: export
-- @entity: batch
-- @name: Add H@M to 1080p Quality Tier 5
-- @exportedAt: 2026-08-17T04:46:41.637Z
-- @opIds: 13195, 13196, 13197, 13198

-- --- BEGIN op 13195 ( create regular_expression "H@M" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('H@M', '(?<=^|[\s.-])MDR\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('H@M', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('H@M', 'Release Group');
-- --- END op 13195

-- --- BEGIN op 13196 ( update regular_expression "H@M" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])H@M\b' where "name" = 'H@M' and "pattern" = '(?<=^|[\s.-])MDR\b';
-- --- END op 13196

-- --- BEGIN op 13197 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'H@M', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'H@M', 'H@M');
-- --- END op 13197

-- --- BEGIN op 13198 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'H@M', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'H@M', 'H@M');
-- --- END op 13198
