-- @operation: export
-- @entity: batch
-- @name: Add NoVA to 1080/720p Quality Tier 5
-- @exportedAt: 2026-08-22T20:51:12.657Z
-- @opIds: 13425, 13426, 13427, 13428, 13429

-- --- BEGIN op 13425 ( create regular_expression "NoVA" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NoVA', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NoVA', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NoVA', 'Release Group');
-- --- END op 13425

-- --- BEGIN op 13426 ( update regular_expression "NoVA" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])NoVA\b' where "name" = 'NoVA' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 13426

-- --- BEGIN op 13427 ( update custom_format "1080p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5', 'NoVA', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5', 'NoVA', 'NoVA');
-- --- END op 13427

-- --- BEGIN op 13428 ( update custom_format "1080p Quality Tier 5 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 5 (Efficient)', 'NoVA', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 5 (Efficient)', 'NoVA', 'NoVA');
-- --- END op 13428

-- --- BEGIN op 13429 ( update custom_format "720p Quality Tier 5" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 5', 'NoVA', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 5', 'NoVA', 'NoVA');
-- --- END op 13429
