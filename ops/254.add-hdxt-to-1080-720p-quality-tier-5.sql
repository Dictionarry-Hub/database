-- @operation: export
-- @entity: batch
-- @name: Add HDxT to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-21T23:52:18.323Z
-- @opIds: 13334, 13335, 13336, 13337, 13338

-- --- BEGIN op 13334 ( create regular_expression "HDxT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HDxT', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDxT', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HDxT', 'Release Group');
-- --- END op 13334

-- --- BEGIN op 13335 ( update regular_expression "HDxT" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])HDxT\b' where "name" = 'HDxT' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13335

-- --- BEGIN op 13336 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'HDxT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'HDxT', 'HDxT');
-- --- END op 13336

-- --- BEGIN op 13337 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'HDxT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'HDxT', 'HDxT');
-- --- END op 13337

-- --- BEGIN op 13338 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'HDxT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'HDxT', 'HDxT');
-- --- END op 13338
