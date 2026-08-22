-- @operation: export
-- @entity: batch
-- @name: Add MKu to 1080/720p Quality Tier 6
-- @exportedAt: 2026-08-22T00:24:54.262Z
-- @opIds: 13346, 13347, 13348, 13349, 13350

-- --- BEGIN op 13346 ( create regular_expression "MKu" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MKu', '(?<=^|[\s.-])FTO\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MKu', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MKu', 'Release Group');
-- --- END op 13346

-- --- BEGIN op 13347 ( update regular_expression "MKu" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])MKu\b' where "name" = 'MKu' and "pattern" = '(?<=^|[\s.-])FTO\b';
-- --- END op 13347

-- --- BEGIN op 13348 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'MKu', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'MKu', 'MKu');
-- --- END op 13348

-- --- BEGIN op 13349 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'MKu', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'MKu', 'MKu');
-- --- END op 13349

-- --- BEGIN op 13350 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'MKu', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'MKu', 'MKu');
-- --- END op 13350
