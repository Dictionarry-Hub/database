-- @operation: export
-- @entity: batch
-- @name: Add DiRTY to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-22T20:37:33.748Z
-- @opIds: 13413, 13414, 13415, 13416, 13417

-- --- BEGIN op 13413 ( create regular_expression "DiRTY" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('DiRTY', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DiRTY', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('DiRTY', 'Release Group');
-- --- END op 13413

-- --- BEGIN op 13414 ( update regular_expression "DiRTY" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])DiRTY\b' where "name" = 'DiRTY' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13414

-- --- BEGIN op 13415 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'DiRTY', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'DiRTY', 'DiRTY');
-- --- END op 13415

-- --- BEGIN op 13416 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'DiRTY', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'DiRTY', 'DiRTY');
-- --- END op 13416

-- --- BEGIN op 13417 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'DiRTY', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'DiRTY', 'DiRTY');
-- --- END op 13417
