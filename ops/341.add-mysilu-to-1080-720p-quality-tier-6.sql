-- @operation: export
-- @entity: batch
-- @name: Add MySiLU to 1080/720p Quality Tier 6
-- @exportedAt: 2026-09-02T02:46:37.803Z
-- @opIds: 14277, 14278, 14279, 14280, 14281

-- --- BEGIN op 14277 ( create regular_expression "MySiLU" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MySiLU', '(?<=^|[\s.-])0BSiDiAN\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MySiLU', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('MySiLU', 'Release Group');
-- --- END op 14277

-- --- BEGIN op 14278 ( update regular_expression "MySiLU" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])MySiLU\b' where "name" = 'MySiLU' and "pattern" = '(?<=^|[\s.-])0BSiDiAN\b';
-- --- END op 14278

-- --- BEGIN op 14279 ( update custom_format "1080p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6', 'MySiLU', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6', 'MySiLU', 'MySiLU');
-- --- END op 14279

-- --- BEGIN op 14280 ( update custom_format "1080p Quality Tier 6 (Efficient)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Quality Tier 6 (Efficient)', 'MySiLU', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Quality Tier 6 (Efficient)', 'MySiLU', 'MySiLU');
-- --- END op 14280

-- --- BEGIN op 14281 ( update custom_format "720p Quality Tier 6" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('720p Quality Tier 6', 'MySiLU', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('720p Quality Tier 6', 'MySiLU', 'MySiLU');
-- --- END op 14281
