-- @operation: export
-- @entity: batch
-- @name: Add Otaibi to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-21T23:44:32.778Z
-- @opIds: 13318, 13319, 13320, 13321, 13322, 13323, 13324, 13325, 13326

-- --- BEGIN op 13318 ( create regular_expression "E76" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('E76', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('E76', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('E76', 'Release Group');
-- --- END op 13318

-- --- BEGIN op 13319 ( update regular_expression "E76" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])E76\b' where "name" = 'E76' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13319

-- --- BEGIN op 13320 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'E76', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'E76', 'E76');
-- --- END op 13320

-- --- BEGIN op 13321 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'E76', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'E76', 'E76');
-- --- END op 13321

-- --- BEGIN op 13322 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'E76', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'E76', 'E76');
-- --- END op 13322

-- --- BEGIN op 13323 ( create regular_expression "Otaibi" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Otaibi', '(?<=^|[\s.-])E76\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Otaibi', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Otaibi', 'Release Group');
-- --- END op 13323

-- --- BEGIN op 13324 ( update regular_expression "Otaibi" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Otaibi\b' where "name" = 'Otaibi' and "pattern" = '(?<=^|[\s.-])E76\b';
-- --- END op 13324

-- --- BEGIN op 13325 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'Otaibi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'Otaibi', 'Otaibi');
-- --- END op 13325

-- --- BEGIN op 13326 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'Otaibi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'Otaibi', 'Otaibi');
-- --- END op 13326
