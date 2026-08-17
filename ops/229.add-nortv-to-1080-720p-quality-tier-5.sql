-- @operation: export
-- @entity: batch
-- @name: Add NorTV to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-17T04:27:16.888Z
-- @opIds: 13175, 13176, 13177, 13178, 13179

-- --- BEGIN op 13175 ( create regular_expression "NorTV" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NorTV', '(?<=^|[\s.-])FANDANGO\b', 'Matches "BakedFEL" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NorTV', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NorTV', 'Release Group');
-- --- END op 13175

-- --- BEGIN op 13176 ( update regular_expression "NorTV" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])NorTV\b' where "name" = 'NorTV' and "pattern" = '(?<=^|[\s.-])FANDANGO\b';
-- --- END op 13176

-- --- BEGIN op 13177 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'NorTV', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'NorTV', 'NorTV');
-- --- END op 13177

-- --- BEGIN op 13178 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'NorTV', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'NorTV', 'NorTV');
-- --- END op 13178

-- --- BEGIN op 13179 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'NorTV', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'NorTV', 'NorTV');
-- --- END op 13179
