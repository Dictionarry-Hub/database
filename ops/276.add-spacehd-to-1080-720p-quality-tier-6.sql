-- @operation: export
-- @entity: batch
-- @name: Add SpaceHD to 1080/720p Quality Tier 6
-- @exportedAt: 2026-08-22T21:22:54.480Z
-- @opIds: 13448, 13449, 13450, 13451, 13452

-- --- BEGIN op 13448 ( create regular_expression "SpaceHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SpaceHD', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SpaceHD', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SpaceHD', 'Release Group');
-- --- END op 13448

-- --- BEGIN op 13449 ( update regular_expression "SpaceHD" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])SpaceHD\b' where "name" = 'SpaceHD' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13449

-- --- BEGIN op 13450 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'SpaceHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'SpaceHD', 'SpaceHD');
-- --- END op 13450

-- --- BEGIN op 13451 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'SpaceHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'SpaceHD', 'SpaceHD');
-- --- END op 13451

-- --- BEGIN op 13452 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'SpaceHD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'SpaceHD', 'SpaceHD');
-- --- END op 13452
