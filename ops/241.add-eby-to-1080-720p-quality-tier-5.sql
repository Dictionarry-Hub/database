-- @operation: export
-- @entity: batch
-- @name: Add Eby to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-17T19:53:01.989Z
-- @opIds: 13247, 13248, 13249, 13250, 13251

-- --- BEGIN op 13247 ( create regular_expression "Eby" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Eby', '(?<=^|[\s.-])Krispy\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Eby', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Eby', 'Release Group');
-- --- END op 13247

-- --- BEGIN op 13248 ( update regular_expression "Eby" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Eby\b' where "name" = 'Eby' and "pattern" = '(?<=^|[\s.-])Krispy\b';
-- --- END op 13248

-- --- BEGIN op 13249 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'Eby', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'Eby', 'Eby');
-- --- END op 13249

-- --- BEGIN op 13250 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'Eby', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'Eby', 'Eby');
-- --- END op 13250

-- --- BEGIN op 13251 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'Eby', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'Eby', 'Eby');
-- --- END op 13251
