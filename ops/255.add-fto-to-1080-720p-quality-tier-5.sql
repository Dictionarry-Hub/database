-- @operation: export
-- @entity: batch
-- @name: Add FTO to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-22T00:11:04.954Z
-- @opIds: 13340, 13341, 13342, 13343, 13344

-- --- BEGIN op 13340 ( create regular_expression "FTO" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FTO', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FTO', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FTO', 'Release Group');
-- --- END op 13340

-- --- BEGIN op 13341 ( update regular_expression "FTO" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])FTO\b' where "name" = 'FTO' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13341

-- --- BEGIN op 13342 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'FTO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'FTO', 'FTO');
-- --- END op 13342

-- --- BEGIN op 13343 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'FTO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'FTO', 'FTO');
-- --- END op 13343

-- --- BEGIN op 13344 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'FTO', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'FTO', 'FTO');
-- --- END op 13344
