-- @operation: export
-- @entity: batch
-- @name: Add FANDANGO to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-17T04:24:37.825Z
-- @opIds: 13169, 13170, 13171, 13172, 13173

-- --- BEGIN op 13169 ( create regular_expression "FANDANGO" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FANDANGO', '(?<=^|[\s.-])SillyBird\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FANDANGO', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FANDANGO', 'Release Group');
-- --- END op 13169

-- --- BEGIN op 13170 ( update regular_expression "FANDANGO" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])FANDANGO\b' where "name" = 'FANDANGO' and "pattern" = '(?<=^|[\s.-])SillyBird\b';
-- --- END op 13170

-- --- BEGIN op 13171 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'FANDANGO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'FANDANGO', 'FANDANGO');
-- --- END op 13171

-- --- BEGIN op 13172 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'FANDANGO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'FANDANGO', 'FANDANGO');
-- --- END op 13172

-- --- BEGIN op 13173 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'FANDANGO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'FANDANGO', 'FANDANGO');
-- --- END op 13173
