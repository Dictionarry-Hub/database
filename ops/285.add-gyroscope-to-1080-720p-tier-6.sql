-- @operation: export
-- @entity: batch
-- @name: Add Gyroscope to 1080/720p Tier 6
-- @exportedAt: 2026-08-25T01:55:01.934Z
-- @opIds: 13607, 13608, 13609, 13610, 13611

-- --- BEGIN op 13607 ( create regular_expression "Gyroscope" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Gyroscope', '(?<=^|[\s.-])MGs\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Gyroscope', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Gyroscope', 'Release Group');
-- --- END op 13607

-- --- BEGIN op 13608 ( update regular_expression "Gyroscope" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Gyroscope\b' where "name" = 'Gyroscope' and "pattern" = '(?<=^|[\s.-])MGs\b';
-- --- END op 13608

-- --- BEGIN op 13609 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'Gyroscope', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'Gyroscope', 'Gyroscope');
-- --- END op 13609

-- --- BEGIN op 13610 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'Gyroscope', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'Gyroscope', 'Gyroscope');
-- --- END op 13610

-- --- BEGIN op 13611 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'Gyroscope', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'Gyroscope', 'Gyroscope');
-- --- END op 13611
