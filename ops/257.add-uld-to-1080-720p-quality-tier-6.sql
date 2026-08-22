-- @operation: export
-- @entity: batch
-- @name: Add Uld to 1080/720p Quality Tier 6
-- @exportedAt: 2026-08-22T00:34:39.182Z
-- @opIds: 13352, 13353, 13354, 13355, 13356

-- --- BEGIN op 13352 ( create regular_expression "Uld" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Uld', '(?<=^|[\s.-])MKu\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Uld', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Uld', 'Release Group');
-- --- END op 13352

-- --- BEGIN op 13353 ( update regular_expression "Uld" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Uld\b' where "name" = 'Uld' and "pattern" = '(?<=^|[\s.-])MKu\b';
-- --- END op 13353

-- --- BEGIN op 13354 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'Uld', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'Uld', 'Uld');
-- --- END op 13354

-- --- BEGIN op 13355 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'Uld', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'Uld', 'Uld');
-- --- END op 13355

-- --- BEGIN op 13356 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'Uld', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'Uld', 'Uld');
-- --- END op 13356
