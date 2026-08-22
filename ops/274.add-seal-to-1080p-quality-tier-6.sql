-- @operation: export
-- @entity: batch
-- @name: Add Seal to 1080p Quality Tier 6
-- @exportedAt: 2026-08-22T21:11:37.678Z
-- @opIds: 13437, 13438, 13439, 13440

-- --- BEGIN op 13437 ( create regular_expression "Seal" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Seal', '(?<=^|[\s.-])aNDy\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Seal', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Seal', 'Release Group');
-- --- END op 13437

-- --- BEGIN op 13438 ( update regular_expression "Seal" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Seal\b' where "name" = 'Seal' and "pattern" = '(?<=^|[\s.-])aNDy\b';
-- --- END op 13438

-- --- BEGIN op 13439 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'Seal', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'Seal', 'Seal');
-- --- END op 13439

-- --- BEGIN op 13440 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'Seal', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'Seal', 'Seal');
-- --- END op 13440
