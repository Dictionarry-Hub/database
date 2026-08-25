-- @operation: export
-- @entity: batch
-- @name: Add J2G to 1080p Quality Tier 5
-- @exportedAt: 2026-08-25T01:59:34.316Z
-- @opIds: 13613, 13614, 13615, 13616

-- --- BEGIN op 13613 ( create regular_expression "J2G" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('J2G', '(?<=^|[\s.-])Gyroscope\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('J2G', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('J2G', 'Release Group');
-- --- END op 13613

-- --- BEGIN op 13614 ( update regular_expression "J2G" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])J2G\b' where "name" = 'J2G' and "pattern" = '(?<=^|[\s.-])Gyroscope\b';
-- --- END op 13614

-- --- BEGIN op 13615 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'J2G', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'J2G', 'J2G');
-- --- END op 13615

-- --- BEGIN op 13616 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'J2G', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'J2G', 'J2G');
-- --- END op 13616
