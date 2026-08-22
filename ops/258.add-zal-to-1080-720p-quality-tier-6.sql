-- @operation: export
-- @entity: batch
-- @name: Add ZAL to 1080/720p Quality Tier 6
-- @exportedAt: 2026-08-22T00:41:51.092Z
-- @opIds: 13358, 13359, 13360, 13361, 13362

-- --- BEGIN op 13358 ( create regular_expression "ZAL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZAL', '(?<=^|[\s.-])Uld\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZAL', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZAL', 'Release Group');
-- --- END op 13358

-- --- BEGIN op 13359 ( update regular_expression "ZAL" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])ZAL\b' where "name" = 'ZAL' and "pattern" = '(?<=^|[\s.-])Uld\b';
-- --- END op 13359

-- --- BEGIN op 13360 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'ZAL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'ZAL', 'ZAL');
-- --- END op 13360

-- --- BEGIN op 13361 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'ZAL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'ZAL', 'ZAL');
-- --- END op 13361

-- --- BEGIN op 13362 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'ZAL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'ZAL', 'ZAL');
-- --- END op 13362
