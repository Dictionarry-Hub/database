-- @operation: export
-- @entity: batch
-- @name: Add CREATiVE to 1080/720p Tier 6
-- @exportedAt: 2026-09-01T21:15:07.985Z
-- @opIds: 14224, 14225, 14226, 14227, 14228

-- --- BEGIN op 14224 ( create regular_expression "CREATiVE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CREATiVE', '(?<=^|[\s.-])CREATiVE24\b', 'Banned for Bloated Garbage', NULL);

insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CREATiVE', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CREATiVE', 'Release Group');
-- --- END op 14224

-- --- BEGIN op 14225 ( update regular_expression "CREATiVE" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])CREATiVE\b' where "name" = 'CREATiVE' and "pattern" = '(?<=^|[\s.-])CREATiVE24\b';
-- --- END op 14225

-- --- BEGIN op 14226 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'CREATiVE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'CREATiVE', 'CREATiVE');
-- --- END op 14226

-- --- BEGIN op 14227 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'CREATiVE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'CREATiVE', 'CREATiVE');
-- --- END op 14227

-- --- BEGIN op 14228 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'CREATiVE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'CREATiVE', 'CREATiVE');
-- --- END op 14228
